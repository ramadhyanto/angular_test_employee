import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { EmployeeService } from '../employee.service';

@Component({
  selector: 'app-employeedetail',
  templateUrl: './employeedetail.component.html',
  styleUrls: ['./employeedetail.component.css']
})
export class EmployeedetailComponent implements OnInit {
username;
firstname
lastname
basicsalary
birthdate
description
email
grup
status
searchdata
  constructor(private router: Router, private employeeServices: EmployeeService, private route: ActivatedRoute) {

   }

  ngOnInit() {
    this.username = history.state.data[0].username
    this.firstname = history.state.data[0].firstname
    this.lastname = history.state.data[0].lastname
    this.basicsalary = history.state.data[0].basicsalary
    this.birthdate = history.state.data[0].birthdate
    this.description = history.state.data[0].description
    this.email = history.state.data[0].email
    this.grup = history.state.data[0].grup
    this.status = history.state.data[0].status
    this.searchdata = history.state.params
  }


  back() {
    this.router.navigate(['employee-list'], { state: {  params: this.searchdata} });
  }

}
