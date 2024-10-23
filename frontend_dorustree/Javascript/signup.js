const form = document.querySelector("#signup-form");
const uname = document.querySelector("#uname");
const email = document.querySelector("#email");
const password = document.querySelector("#password");
const confirmPassword = document.querySelector("#cpassword");

var usersList=[];

form.addEventListener("submit", (event) => {
  event.preventDefault();
  validate();
});

function validate() {
  const nameValue = uname.value.trim();
  const emailValue = email.value.trim();
  const passwordValue = password.value.trim();
  const confirmPasswordValue = confirmPassword.value.trim();

  console.log(nameValue);
  console.log(emailValue);
  console.log(passwordValue);
  console.log(confirmPasswordValue);

  if(passwordValue.length<5){
    alert("Mininum length is 5 character for password");
    return;
  }

  if(confirmPasswordValue.length<5){
    alert("Mininum length is 5 character for confirm password");
    return;
  }

  if(passwordValue != confirmPasswordValue){
    alert("Password and confirm password is mismatched");
    return;
  }
  let users = {
     uname : nameValue,
     email : emailValue,
     password : passwordValue,
     confirmPassword : confirmPasswordValue
  };

  usersList.push(users);

  localStorage.setItem("Users", JSON.stringify(usersList));
   
  window.location.replace("/HTML/index.html");

}

