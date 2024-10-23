//1. print the number from 1-100
for (i=0; i<=100;i++){
    console.log(i)
}
//2. print the number from 1-100 in reverse order 
for(i=100;i>=1;i--)
{
    console.log(i)
}
// 3.print the odd number from 1-100; 
for (var i = 1; i < 100; i += 2) {
    console.log(i);
}
//4.print the even number from 1-100; 
for (var i = 2; i <=100; i += 2) {
    console.log(i);
}
//5.print the odd number betwwen the given input ?  
let g=prompt('Enter  the odd  frist value');
let c=prompt('Enter  the odd  last value');
for(i=g;i<=c;i++){
if(i % 2 == 0)
    console.log(i)
}
//6.print the even number betwwen the given input ? 
let r=prompt('Enter  the even frist value');
let h=prompt('Enter  the  even last value');
for(i=r;i<=h;i++){
if(i % 2 != 0)
    console.log(i);
}
//7.print the table for given number?  
let t=prompt('Enter  the even frist value');
for(i=0;i<=10;i++){
    console.log(i+'*'+t+"="+i*t);
}
8.print it using javascript 
let y='';
for(i=0;i<5; i++){
    for(j=1;j<=i;j++){
        y+= j +' ';
    }
     y+= ' \n';
    
}
console.log(y);

//9.print it using javascript 
let s="";
for(i=1;i<=5;i++){
    for(j=0;j<i;j++){
        s+=i+" ";
    }
    s+="\n";
}
console.log(s);
// 10.print it using javascript 
let o=" ";
for(i=1;i<=5;i++){
    for(j=0;j<i;j++){
        o+=" *"+" ";
    }
    o+="\n";
}
console.log(o);
//11.print it using javascript 
let p=" ";
for(i=5;i>=1;i++){
    for(j=0;j<i;j++){
        p+="*"+" ";
    }
    p+="\n";
}
console.log(p);
// 12.
let o=" ";
for(i=1;i<=4;i++){
    for(j=0;j<i;j++){
        o+="*"+" ";
    }
    o+="\n";
}
for(i=4;i>=1;i++){
    for(j=0;j<i;j++){
        o+="*"+" ";
    }
    o+="\n";
}
console.log(o);
let e=" ";
for(i=1;i<=5;i++){
   for(j=0;j<i;j++){
        e+="*"+" ";
    }
    e+="\n";
 }
console.log(e);
for(i=5;i>=1;i--){
    for(j=0;j<i;j++){
         e+="*"+" ";
     }
     e+="\n";
  }
 console.log(e);
 13.print it using Javascript? 
 let n = "";

 for (let i = 5; i > 0; i--) {
   
   for (let j = 0; j < (5 - i); j++) {
     n += " ";
   }
   
   for (let k = 0; k < i; k++) {
     n += "* ";
   }
   n += "\n";
 }
 for (let i = 0; i < 5; i++) {
    
    for (let j = 0; j < 4-i; j++) {
      n += " ";
    }
    
    for (let k = 0; k <= i; k++) {
      n += "* ";
    }
    n += "\n";
  }
  console.log(n);
let c="";
for(i=0;i<=4;i++){
    for(j=1;j<=i;j++){
        c+=" ";
    }
    for(k=1;k<=4-i;k++){
        c+="*"+" ";
    }
    c+="\n";
}
console.log(c)
for(i=4;i>=1;i--){
    for(j=1;j<=4-i;j++){
        c+=" ";
    }
    for(k=1;k<=i;k++){
        c+="*"+" ";
    }
    c+="\n";
}
console.log(c)


let o="&nbsp";
for(i=1;i<=4;i++){
    for(j=1;j<=i;j++){
        s+=j+"&nbsp";
    }
    o+="<br>";
   
}
document.write(o);




