// Exercise-1 with Solution
// Write a JavaScript function that reverse a number.
// Sample Data and output:
// Example x = 32243;
// Expected Output : 34223
 function sandy(w){
    w=w+"";
    return w.split("").reverse().join("");
 }
 console.log(sandy(4321));

 /////////////// another method///////////////////////
 function sandy(w){
   w=w+"";
   return w.split("").reverse().join("");
}
let w=prompt("enter  the  values ")
console.log(sandy(w));
/// count of number and words
let bb=prompt("Enter the values for sort..")
bb.split("").sort().join("");
//Exercise-2 with Solution
// Write a JavaScript function that returns a passed string with letters in
// alphabetical order.
// Example string : 'webmaster'
// Expected Output : 'abeemrstw'
// Note: Assume punctuation and numbers symbols are not included in the passed
// string..
function sandy(e){
   e=e+"";
   return e.split("").reverse().join("");
}
let e=prompt("enter  the  values ")
console.log(sandy(e));
//Exercise-3 with Solution
// Write a JavaScript function that accepts a string as a parameter and counts the
// number of vowels within the string.
// Note : As the letter 'y' can be regarded as both a vowel and a consonant, we do
// not count 'y' as vowel here.
// Sample Data and output:
// Example string : 'The quick brown fox'
// Expected Output : 5
function vovels(san)
{
    var vovels_list='aeiouAEIOU';
    var vcount=0;
    for(x=0;x<san.length;x++)
        {
            if (vovels_list.indexOf(san[x]) !== -1)
    
               {
                   vcount+=1
               }
                    }
    return vcount;
}
let san=prompt("Enter the words to count its vovels...");
console.log(vovels(san));
// Exercise-5 with Solution
// Write a JavaScript function that accepts a string as a parameter and converts the
// first letter of each word of the string in upper case.
// Example string : 'the quick brown fox'
// Expected Output : 'The Quick Brown Fox '
const san =prompt("Enter the values for upper in first latter")

const arr = san.split(" ");
for (var i = 0; i < arr.length; i++) {
    arr[i] = arr[i].charAt(0).toUpperCase() + arr[i].slice(1);

}
const sandy = arr.join(" ");
console.log(sandy);
//Exercise-6 with Solution
// Write a JavaScript program to get the current date.
// Expected Output :
// mm-dd-yyyy, mm/dd/yyyy or dd-mm-yyyy, dd/mm/yyyy
var today = new Date();
var dd = today.getDate();

var mm = today.getMonth()+1; 
var yyyy = today.getFullYear();
if(dd<10) 
{
    dd='0'+dd;
} 

if(mm<10) 
{
    mm='0'+mm;
} 
today = mm+'-'+dd+'-'+yyyy;
console.log(today);
today = mm+'/'+dd+'/'+yyyy;
console.log(today);
today = dd+'-'+mm+'-'+yyyy;
console.log(today);
today = dd+'/'+mm+'/'+yyyy;
console.log(today);
//Exercise-7 with Solution
//Write a JavaScript program to calculate number of days left until next Christmas.
today=new Date();
var fineday=new Date(today.getFullYear(), 11, 25);
if (today.getMonth()==11 && today.getDate()>25) 
{
cmas.setFullYear(fineday.getFullYear()+1); 
}  
var one_day=1000*60*60*24;
console.log(Math.ceil((fineday.getTime()-today.getTime())/(one_day))+
" days left until The fine day!");
//Write a JavaScript program to calculate multiplication and division of two
//numbers (input from user).
var s=prompt("Enter the  muitiplication first numbers");
var c= prompt("Enter the  muitiplication another number");
var d=prompt("Enter the  dev first numbers");
var t= prompt("Enter the  div another number");
console.log("multiplication number is ",+s*c,"devision number is ",+d/t);
// JavaScript Conditional Statement and loops: Exercise-1
// Write a JavaScript program that accept two integers and display the larger.
first = window.prompt("Input the First integer", "number");
second = window.prompt("Input the second integer","number");
                                                 
if(parseInt(first, 10) > parseInt(second, 10)) 
  { 
  console.log("The larger of "+ first+ " and "+ second+ " is "+ first+ ".");
  }   
else
  if(parseInt(second, 10) > parseInt(first, 10)) 
  {
  console.log("The larger of "+ first+" and "+ second+ " is "+second+ ".");
  }                  
else
  {
   console.log("The values "+ first+ " and "+second+ " are equal.");
  }





 
