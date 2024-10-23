import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';


@Component({
  selector: 'app-crudapp',
  templateUrl: './crudapp.component.html',
  styleUrls: ['./crudapp.component.css']
})
export class CrudappComponent {

     employees : any;
    
     constructor(http : HttpClient){

      let response = http.get("http://localhost:8080/employee/all");
      response.subscribe(data => {this.employees = data});

     }

}
