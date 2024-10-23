import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  constructor(private router : Router){

  }

  signupUsers : any = {};

  ngOnInit(): void {
    const localdata  = localStorage.getItem("signupUsers");
    if(localdata != null){
      this.signupUsers = JSON.parse(localdata);
    }
  }

  login(){
    const isUserExist  = this.signupUsers.find((m: { email: any; password: any; }) => m.email == this.loginObj.email && m.password == this.loginObj.password);
    if(isUserExist != undefined){
      alert("user logged in successfully")
    } else {
      alert("Invalid credentials");
    }
  }

  signup(){
    this.router.navigate(['/signup']);
  }

  loginObj : any = {
    email : "",
    password : ""
  }

}
