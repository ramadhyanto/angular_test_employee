import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { EmployeeService } from '../employee.service';
import { HttpClient } from '@angular/common/http';
import { MatSnackBar } from '@angular/material/snack-bar';
import { fileURLToPath } from 'url';

interface Group {
  value: string;
  viewValue: string;
}

@Component({
  selector: 'app-employeeadd',
  templateUrl: './employeeadd.component.html',
  styleUrls: ['./employeeadd.component.css']
})
export class EmployeeaddComponent implements OnInit {
  // set max date
  todayDate: Date = new Date();
  employeeForm: FormGroup;
  title: String
  button: String
  searchdata

  groups: Group[] = [
    { value: 'Teller', viewValue: 'Teller' },
    { value: 'Mobile Developer', viewValue: 'Mobile Developer' },
    { value: 'Front End Developer', viewValue: 'Front End Developer' },

    { value: 'Cleaning Service', viewValue: 'Cleaning Service' },
    { value: 'Security', viewValue: 'Security' },
    { value: 'Back End Developer', viewValue: 'Back End Developer' },

    { value: 'Staff', viewValue: 'Staff' },
    { value: 'Finance', viewValue: 'Finance' },
    { value: 'Manager', viewValue: 'Manager' },
    { value: 'CEO', viewValue: 'CEO' }
  ];


  constructor(private router: Router, private formBuilder: FormBuilder, private http: HttpClient, private _snackBar: MatSnackBar) { }
  maxDate = new Date(new Date().setDate(new Date().getDate() - 1))
  ngOnInit(): void {
    this.employeeForm = this.formBuilder.group({
      id: [history.state.data ? history.state.data.id : ''],
      username: [history.state.data ? history.state.data.username : '', Validators.required],
      firstname: [history.state.data ? history.state.data.firstname : '', Validators.required],
      lastname: [history.state.data ? history.state.data.lastname : '', Validators.required],
      email: [history.state.data ? history.state.data.email : '', [Validators.required, Validators.email,Validators.pattern('^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$')]],
      birthdate: [history.state.data ? history.state.data.birthdate.toString() : '', Validators.required],
      salary: [history.state.data ? history.state.data.basicsalary : '', Validators.required],
      status: [history.state.data ? history.state.data.status : '', Validators.required],
      group: [history.state.data ? history.state.data.grup : '', Validators.required],
      description: [history.state.data ? history.state.data.description : '', Validators.required],
    });

    // set select data
    this.employeeForm.controls['group'].setValue(history.state.data ? history.state.data.grup : '', { onlySelf: true });
    // set date data
    this.employeeForm.controls['birthdate'].setValue(history.state.data ? history.state.data.birthdate : '', { onlySelf: true });

    // set title
    if (history.state.params == 'edit') {
      this.title = "Employee Edit"
      this.button = "Edit Employee"
    } else {
      this.title = "Employee Add"
      this.button = "Add Employee"
    }

    // set params search data
    this.searchdata = history.state.params2
  }

  public filterOptions(filter: string): void {
    if (filter == '') {
      this.groups = [
        { value: 'Teller', viewValue: 'Teller' },
        { value: 'Mobile Developer', viewValue: 'Mobile Developer' },
        { value: 'Front End Developer', viewValue: 'Front End Developer' },
        { value: 'Cleaning Service', viewValue: 'Cleaning Service' },
        { value: 'Security', viewValue: 'Security' },
        { value: 'Back End Developer', viewValue: 'Back End Developer' },
        { value: 'Staff', viewValue: 'Staff' },
        { value: 'Finance', viewValue: 'Finance' },
        { value: 'Manager', viewValue: 'Manager' },
        { value: 'CEO', viewValue: 'CEO' }
      ]
    } else {
      this.groups = this.groups.filter(x =>
        x.value.toLowerCase().includes(filter.toLowerCase())
      );
    }

  }


  back() {
    this.router.navigate(['employee-list'], { state: { params: this.searchdata } });
  }


  saveEmployee() {
    if (history.state.params == 'edit') {
      this.http.put<any>('http://localhost:4000/editEmployee', this.employeeForm.value).subscribe(response => {
        this.router.navigate(['employee-list'], { state: { params: this.searchdata } });
      });
    } else {
      this.http.post<any>('http://localhost:4000/addEmployee', this.employeeForm.value).subscribe(response => {
        this.router.navigate(['employee-list'], { state: { params: this.searchdata } });
      });
    }


  }
}
