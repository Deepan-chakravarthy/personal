// 1-100

var x=""
for(i=1;i<=100;i++){
    x += i+" ";
}
console.log("print 1-100");
console.log(x);

// 1-100 in reverse

var y=""
for(i=100;i>=1;i--){
    y += i+" ";
}
console.log("print 1-100 in reverse");
console.log(y);

//even number 1-100

var even=""
for(i=1;i<=100;i++){
    if(i%2==0)
    even += i+" "
}
console.log("print even num 1-100");
console.log(even)

//odd number 1-100

var odd=""
for(i=1;i<=100;i++){
    if(i%2!=0)
    odd += i+" "
}
console.log("print odd num 1-100");
console.log(odd)

// odd number by input

let first=prompt("enter first number");
let last=prompt("enter the last number");
var odd1 =""
for(i=first;i<=last;i++){
    if(i%2!=0)
    odd1 += i+" "
}
console.log("odd number for given input")
console.log(odd1)

// even number by input

var even1 =""
for(i=first;i<=last;i++){
    if(i%2==0)
    even1 += i+" "
}
console.log("even number for given input")
console.log(even1)

//tables for given input

console.log("tables for given input")
var table=""
for(i=1;i<=10;i++){
    console.log(i+"*"+last+"="+i*last)
    
}



// 8
{
let n = 5; 
let string = "";
for (let i = 1; i <= n; i++) {
  for (let j = 1; j <= i; j++) {
    string += j;
  }
  string += "\n";
}
console.log(string);
}


//9

{
let n=4;
let string1 = "";
for (let i = 1; i <= n; i++) {
  for (let j = 1; j <= i; j++) {
    string1 += i;
  }
  string1 += "\n";
}
console.log(string1);
}


//10

{
let n=4;
let string2 = "";
for (let i = 1; i <= n; i++) {
  for (let j = 1; j <= i; j++) {
    string2 += "*";
  }
  string2 += "\n";
}
console.log(string2);
}


//11
 
{
let n=4;
let string3 = "";
for (let i = 1; i <= n; i++) {
  for (let j = 0; j <=n-i; j++) {
    string3 += "*";
  }
  string3 += "\n";
}
console.log(string3);
}

//12

{
  let n=4;
  let string="";
  for(let i=0;i<=n;i++){
    for(j=0;j<=n-i;j++){
      string += " ";
    }
    for(k=0;k<2*i-1;k++){
      string +="*";
    }
    string +="\n"
  }  
  console.log(string);
}

//13


{
  let n=4;
  let string="";
  for(let i=0;i<=n;i++){
    for(j=0;j<=i;j++){
      string += " ";
    }
    for(k=0;k<2*(n-i)-1;k++){
      string +="*";
    }
    string +="\n"
  }
  console.log(string);
}


//14


{
  let n=4;
  let string="";
  for(let i=0;i<=n;i++){
    for(j=0;j<=n-i;j++){
      string += " ";
    }
    for(k=0;k<2*i-1;k++){
      string +="*";
    }
    string +="\n";
  }

  for(let i=1;i<=n;i++){
    for(j=0;j<=i;j++){
      string += " ";
    }
    for(k=0;k<2*(n-i)-1;k++){
      string +="*";
    }
    string +="\n"
  }
  console.log(string);
}


//15

{
  let n=4;
  let star="";
  for(i=0;i<n;i++){
    for(j=0;j<=i;j++){
       star +=" ";
    }
    for(k=0;k<2*(n-i)-1;k++){
      star +="*";
    }
      star += "\n"
  }
  for(i=2;i<=n;i++){
    for(j=0;j<=n-i;j++){
      star +=" ";
    }
    for(k=0;k<2*i-1;k++){
      star +="*";
    }
      star +="\n";
  }
  console.log(star)
}


