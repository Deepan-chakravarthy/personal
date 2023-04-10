import { Component } from '@angular/core';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent {

  signupUsers : any[] = [];

  signupObj : any = {
    username : "",
    email : "",
    password : "",
    cpassword : ""
  };

  onSignup(){
    this.signupUsers.push(this.signupObj);
    localStorage.setItem("signupUsers", JSON.stringify(this.signupUsers));
  }


}
