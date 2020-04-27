import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { EmployeelistComponent } from './employeelist/employeelist.component';
import { EmployeeaddComponent } from './employeeadd/employeeadd.component';
import { EmployeedetailComponent } from './employeedetail/employeedetail.component';


const routes: Routes = [
  { path: '', redirectTo: '/login', pathMatch: 'full'},
  { path: 'login',   component: LoginComponent},
  { path: 'employee-list',   component: EmployeelistComponent},
  { path: 'employee-add',   component: EmployeeaddComponent},
  { path: 'employee-detail',   component: EmployeedetailComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
