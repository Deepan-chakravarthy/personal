// var x = "";
// for (let i = 0; i <= 5; i++) {
//   for (let j = 1; j<i; j++) {
//     x += j + " ";
//   }
//   x += "<br>";
// }
// document.write(x);
// document.write("<hr>")

// var x = "";
// for (let i = 0; i <= 4; i++) {
//   for (let j = 0; j<i; j++) {
//     x += i + " ";
//   }
//   x += "<br>";
// }
// document.write(x);
// document.write("<hr>")

// var x = "";
// for (let i = 0; i <= 4; i++) {
//   for (let j = 0; j<i; j++) {
//     x += "* " ;
//   }
//   x += "<br>";
// }
// document.write(x);
// document.write("<hr>")

// var x = "";
// for (let i = 4; i>=1; i--) {
//   for (let j = 0; j < i ; j++) {
//     x += "* ";
//   }
//   x += "<br>";
// }
// document.write(x);
// document.write("<hr>")

// var x = "";
// for (let i = 0; i <= 3; i++) {
//   for (let j = 0; j<i; j++) {
//     x += "* " ;
//   }
//   x += "<br>";
// } 
// for (let i = 4; i>=1; i--) {
//   for (let j = 0; j < i ; j++) {
//     x += "* ";
//   }
//   x += "<br>";
// }
// document.write(x);
// document.write("<hr>");

// var x = "";
// // External loop
// for (let i = 1; i <= 5; i++) {
//   // printing spaces
//   for (let j = 1; j <= 6 - i; j++) {
//     x += "&nbsp ";
//   }
//   // printing star
//   for (let k = 1; k <= i ; k++) {
//     x += "*"+"&nbsp ";
//   }
//   x += "<br>";
// }
// document.write(x);
// document.write("<hr>");

// var x="";
// // External loop
// for (let i = 5; i >= 1; i--) {
//   // printing spaces
//   for (let j = 1; j <= 6 - i; j++) {
//     x += "&nbsp ";
//   }
//   // printing star
//   for (let k = 1; k <= i ; k++) {
//     x += "*"+"&nbsp  ";
//   }
//   x += "<br>";
// }
// document.write(x);
// document.write("<hr>")

// var x = "";
// // External loop
// for (let i = 1; i <= 5; i++) {
//   // printing spaces
//   for (let j = 1; j <= 5 - i; j++) {
//     x += "&nbsp ";
//   }
//   // printing star
//   for (let k = 1; k <= i ; k++) {
//     x += "*"+"&nbsp ";
//   }
//   x += "<br>";
// }
// // External loop
// for (let i = 4; i >= 1; i--) {
//   // printing spaces
//   for (let j = 1; j <= 5 - i; j++) {
//     x += "&nbsp ";
//   }
//   // printing star
//   for (let k = 1; k <= i ; k++) {
//     x += "*"+"&nbsp ";
//   }
//   x += "<br>";
// }
// document.write(x);
// document.write("<hr>") 

// // External loop
// var x = "";
// for (let i = 4; i >= 1; i--) {
//   // printing spaces
//   for (let j = 1; j <= 5 - i; j++) {
//     x += "&nbsp ";
//   }
//   // printing star
//   for (let k = 1; k <= i ; k++) {
//     x += "*"+"&nbsp ";
//   }
//   x += "<br>";
// }

// // External loop
// for (let i = 1; i <= 4; i++) {
//   // printing spaces
//   for (let j = 1; j <= 5 - i; j++) {
//     x += "&nbsp ";
//   }
//   // printing star
//   for (let k = 1; k <= i ; k++) {
//     x += "*"+"&nbsp ";
//   }
//   x += "<br>";
// }
// document.write(x);
// document.write("<hr>") 

// var x = "";
// // External loop
// for (let i = 1; i <= 5; i++) {
//   // printing spaces
//   for (let j = 1; j <= 5 - i; j++) {
//     x += "&nbsp &nbsp ";
//   }
//   // printing star
//   for (let k = 1; k <= i ; k++) {
//     x += "*"+"&nbsp ";
//   }
//   x += "<br>";
// }
// document.write(x);
// document.write("<hr>")

// var x="";
// // External loop
// for (let i = 5; i >= 1; i--) {
//   // printing spaces
//   for (let j =1 ; j <= 5 - i; j++) {
//     x += "&nbsp &nbsp ";
//   }
//   // printing star
//   for (let k = 1; k <= i ; k++) {
//     x += "*"+"&nbsp ";
//   }
//   x += "<br>";
// }
// document.write(x);
// document.write("<hr>")

function multiplyBy()
{
num1 = document. getElementById("firstNumber").value;
num2 = document. getElementById("secondNumber").value;
document. getElementById("result").innerHTML= num1 * num2;
}
function divideBy()
{ 
  num1 = document.getElementById("firstNumber").value;
  num2 = document.getElementById("secondNumber").value;
document.getElementById("result").innerHTML= num1 / num2;
}