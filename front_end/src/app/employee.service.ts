import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class EmployeeService {
  values: any
  constructor(private http: HttpClient) { }


  getEmployees() {
    this.http.get<any>('http://dummy.restapiexample.com/api/v1/employees').subscribe(response => {
      this.values = response.data; 
    });

    }


}
