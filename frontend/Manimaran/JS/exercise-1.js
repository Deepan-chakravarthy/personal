//1.print the number from 1-100:
var s = "";
for(var i = 1; i < 101; i += 1) {
  s += i + ",";
}
console.log(s);

//2. print the number from 1-100 in reverse order:
var s=""
for(i=100;i>=1;i--){
s+=i+",";
}
  console.log(s);

//3.print the odd number from 1-100;
var s=""
for (var i = 2 ; i < 102 ; i += 2 ) {
s+=i+",";
}
  console.log(s);

//4.print the even number from 1-100;
var s=""
for (var i = 1 ; i < 100 ; i += 2 ) {
s+=i+",";
}
   console.log(s);

//5.print the odd number between the given input ? 
console.log('odd numbers are ');
for (var i = 2 ; i < 5 ; i += 2 ) {
  console.log(i);
}

//6.print the even number betwwen the given input ?
let num = [1,2,3,4,5,];

console.log('even numbers are');
for (var i = 1 ; i < n ; i += 2 ) {
   console.log(i);
}
//7.print the table for given number? 
var input  = prompt("Enter the number:");
for (var i = 1; i <= 10; i++) {
console.log(input + " * " + i + " = " + input * i);
}

/*8.print it using javascript
1
1 2
1 2 3 
1 2 3 4 */

let n = 4; 
let string = "";
for (let i = 1; i <= n; i++) {
  for (let j = 1; j <= i; j++) {
    string += j;
  }
  string += "\n";
}
console.log(string);

/* 9.print it using javascript
1
2 2
3 3 3 
4 4 4 4    */

let n = 4; 
let string = "";
for (let i = 1; i <= n; i++) {
  for (let j = 1; j <= i; j++) {
    string += i;
  }
  string += "\n";
}
console.log(string);


/*10.print it using javascript
*
* *
* * *
* * * *     */
let n = 4;
let string = "";
for (let i = 1; i <= n; i++) {
  for (let j = 0; j < i; j++) {
    string += "*";
  }
  string += "\n";
}
console.log(string);

/*11.print it using Javascript?
* * * *
* * *
* *
*       */
let n = 4;
let string = "";
for (let i = 0; i < n; i++) {
  // printing star
  for (let k = 0; k < n - i; k++) {
    string += "*";
  }
  string += "\n";
}
console.log(string);

/* 12.print it using Javascript?
*
* *
* * *
* * * *
* * *
* *
*      */

let n = 4;
let s = "";
for (let i = 1; i <= n; i++) {
  for (let j = 0; j < i; j++) {
    s += "*";
  }
  s += "\n";
}
for (let i = 1; i <= n - 1; i++) {
  for (let j = 0; j < n - i; j++) {
    s += "*";
  }
  s += "\n";
}
console.log(s);    


/* 13.print it using Javascript?
   *
  * *
 * * *
* * * *         */

let star = '' 
for(let i=0; i<5;i++){
    
for (let j=0;j<4-i;j++){
    star += " "
}
    for(let k=0;k <  i;k++){
        star += "* "
    }
    star += "\n"
}
console.log(star)

/*  14.Print it Using Javascript?
* * * *
 * * *
  * *
   *          */

let star = '' 
for(let i=0; i<4;i++){
    
for (let j=0;j<i;j++){
    star += " "
}
    for(let k=0;k < 4 -i;k++){
        star += "* "
    }
    star += "\n"
}
console.log(star)

/*   15.Print it Using Javascript?
   *
  * *
 * * *
* * * *
 * * *
  * *
   *         */


let star = '' 
for(let i=0; i<5;i++){
    
for (let j=0;j<4-i;j++){
    star += " "
}
    for(let k=0;k <  i;k++){
        star += "* "
    }
    star += "\n"
}
for(let i=0; i<4;i++){
    
for (let j=0;j<i;j++){
    star += " "
}
    for(let k=0;k < 4 -i;k++){
        star += "* "
    }
    star += "\n"
}
console.log(star)




