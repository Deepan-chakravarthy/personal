// Exercise-1 with Solution
// Write a JavaScript function that reverse a number.
// Sample Data and output:
// Example x = 32243;
// Expected Output : 34223 

// function reverse_a_number(n)
// {
// 	n.toString();
// 	return n.split("").reverse().join("");
// }
// var e=prompt("enter the value")
// console.log(reverse_a_number (e));

// //.......................................................//

// Exercise-2 with Solution
// Write a JavaScript function that returns a passed string with letters in
// alphabetical order.
// Example string : 'webmaster'
// Expected Output : 'abeemrstw'
// Note: Assume punctuation and numbers symbols are not included in the passed
// string

// function alphabet_order(str)
//   {
// return str.split('').sort().join('');
//   }
// console.log(alphabet_order("webmaster"));

// //.......................................................//

//  Exercise-3 with Solution
// Write a JavaScript function that accepts a string as a parameter and counts the
// number of vowels within the string.
// Note : As the letter 'y' can be regarded as both a vowel and a consonant, we do
// not count 'y' as vowel here.
// Sample Data and output:
// Example string : 'The quick brown fox'
// Expected Output : 5
//  function Vowels(str) {
//   return str.match(/[aeiou]/gi).length;
// }
// console.log(Vowels(prompt('Enter Text')));


// //.......................................................//

// Exercise-4
//  with Solution
// Write a JavaScript function that accepts a string as a parameter and converts the
// first letter of each word of the string in upper case.
// Example string : 'the quick brown fox'
// Expected Output : 'The Quick Brown Fox '

//  function uppercase(str)
// {
//   var array1 = str.split(' ');
//   var newarray1 = [];
    
//   for(var x = 0; x < array1.length; x++){
//       newarray1.push(array1[x].charAt(0).toUpperCase()+array1[x].slice(1));
//   }
//   return newarray1.join(' ');
// }
// console.log(uppercase("the quick brown fox"));

// //.......................................................//

// Exercise-5 with Solution
// Write a JavaScript program to get the current date.
// Expected Output :
// mm-dd-yyyy, mm/dd/yyyy or dd-mm-yyyy, dd/mm/yyyy

// var today = new Date();
// var dd = today.getDate()
// var mm = today.getMonth()+1; 
// var yyyy = today.getFullYear();
// if(dd<10) 
// {
//     dd='0'+dd;
// } 

// if(mm<10) 
// {
//     mm='0'+mm;
// } 
// today = mm+'-'+dd+'-'+yyyy;
// console.log(today);
// today = mm+'/'+dd+'/'+yyyy;
// console.log(today);
// today = dd+'-'+mm+'-'+yyyy;
// console.log(today);
// today = dd+'/'+mm+'/'+yyyy;
// console.log(today); 

//.......................................................//
// Exercise-7 with Solution
// Write a JavaScript program to calculate number of days left until next Christmas

// today=new Date();
// var cmas=new Date(today.getFullYear(), 11, 25);
// if (today.getMonth()==11 && today.getDate()>25) 
// {
// cmas.setFullYear(cmas.getFullYear()+1); 
// }  
// var one_day=1000*60*60*24;
// console.log(Math.ceil((cmas.getTime()-today.getTime())/(one_day))+
// " days left until Christmas!");

// Exercise-8 Write a JavaScript program to calculate multiplication and division of two
// numbers (input from user).





var a = prompt('Enter a number');
var b = prompt('Enter a number');

var confirm = confirm()

if(confirm){
console.log( a * b)
}

else {
console.log( a / b)
}


var ex1 = function(x,y){
  var res;
  if(x > y){
  res = x;
  }
  else
   res = y;
  return res;
  };
  
  console.log(ex1(1, 3));
  console.log(ex1(5,4));
// function max(num1 , num2){

//   if( num1 >= num2)
//   return num1;
//   return num2;
//   }
//   console.log(max(9,7));
                                              