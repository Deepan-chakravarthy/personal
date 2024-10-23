for (i=0; i<=100;i++){
    console.log(i)
}
//////////////////////////////
for(i=100;i>=1;i--){console.log(i)
}
//////////////////////////////
for (var i = 1; i < 100; i += 2) {
    console.log(i);
}
//////////////////////////////////////
for (var i = 2; i <=100; i += 2) {
    console.log(i);
}
///////////////////////////////////////
let g=prompt('Enter  the frist value');
let c=prompt('Enter  the last value');
for(i=g;i<=c;i++){
if(i % 2 == 0)
    console.log(i)
}
////////////////////////////////////////
let d=prompt('Enter  the frist value');
let t=prompt('Enter  the last value');
for(i=d;i<=t;i++){
if(i % 2 != 0)
    console.log(i)
}
/////////////////////////////////////

10.print it using javascript 

let n = 5;
let sandy = "";
for (let i = 1; i <= n; i++) {
  for (let j = 0; j < i; j++) {
    sandy += "*";
  }
  sandy += "\n";
}
console.log(sandy);
///////////////////////
11.print it using Javascript? 

let n = 5;
let sandy = "";
for (let i = 0; i < n; i++) {
  
  for (let s = 0; s < n - i; s++) {
    sandy += "*";
  }
  sandy += "\n";
}
console.log(sandy);
////////////////////////////////////

let n = 5;
let string = "";
for (let i = 1; i <= n; i++) {
    for (let j = n; j > i; j--) {
    string += " ";
  }
  
  for (let k = 0; k < i * 2 - 1; k++) {
    string += "*";
  }
  string += "\n";
}

for (let i = 1; i <= n - 1; i++) {

  for (let j = 0; j < i; j++) {
    string += " ";
  }
  
  for (let k = (n - i) * 2 - 1; k > 0; k--) {
    string += "*";
  }
  string += "\n";
}
console.log(string);
////////////////////////////////////////////////////////////////

let x='';
for(i=0;i<5; i++){
    for(j=1;j<=i;j++){
        x+= j +' ';
    }
     x+= ' \n';
    
}
console.log(x);
///////////////////////////////////////////
let n = 5;

for (let i = 1; i <= n; i++) {
  // printing spaces
  for (let j = 0; j < n - i; j++) {
    string += " ";
  }
  // printing star
  for (let k = 0; k < i; k++) {
    string += "*";
  }
  string += "\n";
}
console.log(string);
const person ={
   name:"santhosh",
   place:"chennai",

sandy(){ 
      return `hi am ${this.name} am from ${this.place}`;
},
  }
  const nameinput=prompt("Enter your name..");
  const placeinput= prompt(" Enter  your place..");
  person.name=nameinput;
  person.place=placeinput;
  document.body.innerHTML=person.sandy();

  const personOne=person.sandy()
console.log(personOne);
