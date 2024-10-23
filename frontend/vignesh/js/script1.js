//1
var x=' ';
for (var i=1; i<=100;i++){
    x+=i+" ";
}
console.log(x)
//2
var x=' ';
for(i=100;i>=1;i--){
    x+=i+' ';
}
console.log(x)
//3
var x=' ';
for (var i = 1; i < 100; i += 2) {
    x+= i+" ";
}
console.log(x)
//4
var x=' ';
for (var i = 2; i < 100; i += 2) {
    x+= i+" ";
}
console.log(x)

//8 print it using javascript 1 1 2 1 2 3  1 2 3 4  

var x = "";
for (let i = 0; i <= 5; i++) {
  for (let j = 1; j<i; j++) {
    x += j + " ";
  }
  x += "\n";
}
console.log(x);
//9
//print it using javascript 1 2 2 3 3 3  4 4 4 4 
var x = "";
for (let i = 0; i <= 4; i++) {
  for (let j = 0; j<i; j++) {
    x += i + " ";
  }
  x += "\n";
}
console.log(x);

//10.print it using javascript

 //*
 //* *
 //* * * 
 //* * * * 

var x = "";
for (let i = 1; i <= 4; i++) {
  for (let j = 0; j<i; j++) {
    x += "* " ;
  }
  x += "\n";
}
console.log(x);

// 11.print it using Javascript? 

var x = "";
for (let i = 4; i>=1; i--) {
  for (let j = 0; j < i ; j++) {
    x += "* ";
  }
  x += "\n";
}
console.log(x);

// 12..................

var x = "";
for (let i = 0; i <= 3; i++) {
  for (let j = 0; j<i; j++) {
    x += "* " ;
  }
  x += "\n";
} 
for (let i = 4; i>=1; i--) {
  for (let j = 0; j < i ; j++) {
    x += "* ";
  }
  x += "\n";
}
console.log(x);

//20 
var x = "";
for (let i = 4; i >= 0; i--) {
  for (let j = 0; j<i; j++) {
    x += i + " ";
  }
  x += "\n";
}
console.log(x);

//13.pyramid................................
var x = "";
// External loop
for (let i = 1; i <= 5; i++) {
  // printing spaces
  for (let j = 1; j <= 5 - i; j++) {
    x += " ";
  }
  // printing star
  for (let k = 1; k <= i ; k++) {
    x += "*"+" ";
  }
  x += "\n";
}
console.log(x);

//14.reverse pyramid...........................

var x="";
// External loop
for (let i = 5; i >= 1; i--) {
  // printing spaces
  for (let j = 1; j <= 6 - i; j++) {
    x += " ";
  }
  // printing star
  for (let k = 1; k <= i ; k++) {
    x += "*"+" ";
  }
  x += "\n";
}
console.log(x);

//15. Daimond.../..................
var x = "";
// External loop
for (let i = 1; i <= 5; i++) {
  // printing spaces
  for (let j = 1; j <= 5 - i; j++) {
    x += " ";
  }
  // printing star
  for (let k = 1; k <= i ; k++) {
    x += "*"+" ";
  }
  x += "\n";
}
// External loop
for (let i = 4; i >= 1; i--) {
  // printing spaces
  for (let j = 1; j <= 5 - i; j++) {
    x += " ";
  }
  // printing star
  for (let k = 1; k <= i ; k++) {
    x += "*"+" ";
  }
  x += "\n";
}
console.log(x);

// 16.rigth angle.......................
var x = "";
// External loop
for (let i = 1; i <= 5; i++) {
  // printing spaces
  for (let j = 1; j <= 5 - i; j++) {
    x += "  ";
  }
  // printing star
  for (let k = 1; k <= i ; k++) {
    x += "*"+" ";
  }
  x += "\n";
}
console.log(x);

// right angle reversed
var x="";
// External loop
for (let i = 5; i >= 1; i--) {
  // printing spaces
  for (let j = 1; j <= 6 - i; j++) {
    x += "  ";
  }
  // printing star
  for (let k = 1; k <= i ; k++) {
    x += "*"+" ";
  }
  x += "\n";
}
console.log(x);

var x = "";
// External loop
for (let i = 1; i <= 5; i++) {
  // printing spaces
  for (let j = 1; j <= 5 - i; j++) {
    x += "  ";
  }
  // printing star
  for (let k = 1; k <= i ; k++) {
    x += "*"+" ";
  }
  x += "\n";
}
// External loop
for (let i = 4; i >= 1; i--) {
  // printing spaces
  for (let j = 1; j <= 4 - i; j++) {
    x += "  ";
  }
  // printing star
  for (let k = 1; k <= i ; k++) {
    x += "*"+" ";
  }
  x += "\n";
}
console.log(x);