//Number Reverse
let x=32243;
x=parseInt((((String(x)).split("")).reverse()).join(''),10); //using Inbuild function to reverse number
console.log(x);

//String in Alphabetical Order
let y='webmaster';
y=((y.split('')).sort()).join('');
console.log(y);

// Vowels and consonents without Y
let string="The quick brown foxy";
string1=string.match(/[aeiou]/gi).length;
console.log("vowel:"+string1);
string2=(string.match(/[^aeiou ]/gi)).join('').replace('y', '').split(" ").join('').length; // ^ this is not
console.log("Cons:"+string2);

//Get Date
const date = new Date();
let day = date.getDate();
let month = date.getMonth() + 1;
let year = date.getFullYear();
let currentDate = `${month}-${day}-${year}`;
console.log(currentDate);
let currentDate1 = `${month}/${day}/${year}`;
console.log(currentDate1);

//Christmas Date How many days left
let date123=new Date();
let Christmas=new Date(date123.getFullYear(),11,25);
/*let Christmas =new Date("12-25-2022");*/
let Time_diff=Christmas.getTime()-date123.getTime(); // time difference
let date_diff=Time_diff/(1000*3600*24);
/*console.log(Math.ceil(date_diff));*/
let xmas=new Date(date123.getFullYear(),11,25);
console.log("Christmas"+"-"+xmas+" "+(Math.ceil(date_diff)));

//1st letter uppercase
let string3="the quick brown fox";
let string31=string3.split(" ");
for(i=0;i<string31.length;i++)
{
    string31[i]=string31[i].charAt(0).toUpperCase()+string31[i].slice(1);
}
let string32=string31.join(" ");
console.log(string32);
/*--------------------Without For Loop-------------------*/
let string41=(string3.replace(/(^\w|\s\w)/g, n=> n.toUpperCase()));
console.log(string41);

//Multiplication and Division
function mul(x,y){
    return x*y;
}
function div(e,s){
    return e/s;
}
let a=10,b=5;
let p=mul(a,b);
let z=div(a,b);
console.log("Mul : "+p);
console.log("Div : "+z);

/*JavaScript Conditional Statement and loops:
Exercise-1
with Solution
Write a JavaScript program that accept two integers and display the larger.*/

let d=15
let et=95
let maxi=Math.max(d,et);
console.log(maxi);

/*Exercise-2
with Solution
Write a JavaScript conditional statement to find the sign of product of three numbers. Display an alert box
with the specified sign.*/

let re=-5;
let bb=20;
let dd=5
let vv=re*bb*dd;
let cc=Math.sign(vv)
if(cc==1)
{
    alert("+ve (Positive Number)")
}
else
{
    alert("-ve (Negative Number)")
}

/*JavaScript Array : 

Exercise-1 with Solution
Write a JavaScript function to check whether an `input` is an array or not.
Test Data :
document.write(is_array('w3resource'));
document.write(is_array([1, 2, 4, 0]));
false
true*/

let tt=[10,20,30,40,50];
console.log(Array.isArray(tt));
document.write(Array.isArray(tt));
let tq='Imman';
console.log(Array.isArray(tq));
document.write(Array.isArray(tq));

/*Exercise-2 with Solution
Write a JavaScript function to clone an array.
Test Data :
document.write(array_Clone([1, 2, 4, 0]));
document.write(array_Clone([1, 2, [4, 0]]));
[1, 2, 4, 0]
[1, 2, [4, 0]]*/

let ttt=[10,20,30,40,50];
let ttt2=[...ttt];
console.log(ttt2);

/*JavaScript Array: 

Exercise-5 with Solution
Write a simple JavaScript program to join all elements of the following array into
a string.
Expected Output :
"Red,Green,White,Black"
"Red,Green,White,Black"
"Red+Green+White+Black"*/

let arr12=["Red","Green","White","Black"];
console.log(arr12.join('+'));

/*Exercise-7 with Solution
Write a JavaScript program to sort the items of an array.
Sample array : var arr1 = [ 3, 8, 7, 6, 5, -4, 3, 2, 1 ];
Sample Output : -4,-3,1,2,3,5,6,7,8*/

let arr123=[ -3, 8, 7, 6, 5, -4, 3, 2, 1 ];
arr123.sort((a,b) => {
    return a-b;
});
console.log(arr123);

/*Write a JavaScript for loop that will iterate from 0 to 15. For each iteration, it will
check if the current number is odd or even, and display a message to the screen.
Sample Output :
"0 is even"
"1 is odd"
"2 is even"*/

let n=15;
for(i=0;i<=n;i++)
{
    if(i%2==0)
    {
        console.log(i+"-"+"Even")
    }
    else
    {
        console.log(i+"-"+"Odd")
    }
}

/*Write a JavaScript conditional statement to find the largest of five numbers.
Display an alert box to show the result.*/

let n12=[10,40,88,75,12];
let trt=n12[0];
for(i=0;i<n12.length;i++)
{
    if(trt<n12[i])
    trt=n12[i];
}
console.log("Greatest Number - "+trt);