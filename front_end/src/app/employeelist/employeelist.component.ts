import { Component, OnInit, ViewChild } from '@angular/core';
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { MatTableDataSource } from '@angular/material/table';
import { Router } from '@angular/router';
import { EmployeeService } from '../employee.service';
import { HttpClient } from '@angular/common/http';
import { FormGroup, FormBuilder } from '@angular/forms';
import {MatSnackBar} from '@angular/material/snack-bar';


@Component({
  selector: 'app-employeelist',
  templateUrl: './employeelist.component.html',
  styleUrls: ['./employeelist.component.css']
})

export class EmployeelistComponent implements OnInit {

  searchForm: FormGroup;
  displayedColumns: string[] = ['id', 'username', 'firstname', 'lastname', 'email', 'basicsalary', 'status', 'grup', 'birthdate', 'description', 'actions'];
  dataSource
  employees: any

  @ViewChild(MatSort, { static: false }) sort: MatSort;
  @ViewChild(MatPaginator, { static: false }) paginator: MatPaginator;

  constructor(private http: HttpClient, private _snackBar: MatSnackBar, private router: Router, private employeeServices: EmployeeService, private formBuilder: FormBuilder) { }

  ngOnInit() {
    this.getEmployees();
    this.searchForm = this.formBuilder.group({
      status: [history.state.params? history.state.params.status : ''],
      group: [history.state.params ? history.state.params.group : '']
    });
  }

  // get All Employee
  getEmployees() {
    this.http.get<any>('http://localhost:4000/getEmployee').subscribe(response => {
      this.setDataToTable(response)
    });
  }

  // get Employee By Id
  search() {
    var status = this.searchForm.value.status
    var grup = this.searchForm.value.group

    if (status == '' || grup == '') {
      this._snackBar.open("Message","Harap isi Parameter", {
        duration: 2000,
      });
    } else {
      this.http.get<any>('http://localhost:4000/searchEmployee?status=' + status + '&grup=' + grup).subscribe(response => {
        this.setDataToTable(response)
      });
    }
   
  }

  // set to table
  setDataToTable(response) {
    this.employees = response;
    this.dataSource = new MatTableDataSource(this.employees);
    this.dataSource.sort = this.sort;
    this.dataSource.paginator = this.paginator;
  }

  // detail employee
  detailEmployee(params) {
    this.http.get<any>('http://localhost:4000/getEmployeeById?id=' + params.id).subscribe(response => {
      this.router.navigate(['employee-detail'], { state: { data: response , params: this.searchForm.value} });
    });

  }

  // delete Employee
  deleteEmployee(params) {
    this.http.delete<any>('http://localhost:4000/deleteEmployee/' + params.id).subscribe(response => {
      console.log(response)
      this.getEmployees();
    });
  }

  // add Employee
  addEmployee() {
    this.router.navigate(['employee-add'], { state: { params2: this.searchForm.value} });
   
  }

  editEmployee(params) {
    console.log(params)
    this.router.navigate(['employee-add'], { state: { data: params , params: 'edit', params2: this.searchForm.value} });
  }

  

  

}
