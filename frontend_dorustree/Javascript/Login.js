const form = document.querySelector("#login-form");
const uname = document.querySelector("#uname");
const password = document.querySelector("#password");

var nameValue;
var passwordValue;

let users = [];

window.onload = () => {
  users = JSON.parse(localStorage.getItem("Users"));
  console.log(users);
};

form.addEventListener("submit", (event) => {
  event.preventDefault();
  validate();
});

function validate() {
    var nameValue = uname.value.trim();
    var passwordValue = password.value.trim();
  console.log(nameValue);
  console.log(passwordValue);
 
  let user = users[0];

  if (user["uname"] == nameValue && user["password"] == passwordValue){
    alert("logged in successfully");
  } else{
    alert("credentials mis-matched");
  }
}
