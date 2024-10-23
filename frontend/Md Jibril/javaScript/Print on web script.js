/* Exercise-1 
Write a JavaScript function that reverse a number.
Sample Data and output:
Example x = 32243;
Expected Output : 34223 */

//Ans:
function reverse(a) {
  return a.split("").reverse().join("");
}
function reverse_num() {
  var x = Number(document.getElementById("r_num").value);
  document.getElementById("r_num_result").value = reverse(x.toString());
}

// /*Exercise-2
// Write a JavaScript function that returns a passed string with letters in
// alphabetical order.
// Example string : 'webmaster'
// Expected Output : 'abeemrstw'
// Note: Assume punctuation and numbers symbols are not included in the passed
// string..*/

//Ans:
function reverse_s() {
  let word = document.getElementById("r_str").value;
  document.getElementById("r_str_result").value = reverse(word);
}

// /*Exercise-3
// Write a JavaScript function that accepts a string as a parameter and counts the
// number of vowels within the string.
// Note : As the letter 'y' can be regarded as both a vowel and a consonant, we do
// not count 'y' as vowel here.
// Sample Data and output:
// Example string : 'The quick brown fox'
// Expected Output : 5 */

// Ans:
function countVowel(srt) {
  count = srt.match(/[aeiou]/gi).length;
  return count;
}
function count_vowels() {
  let word = String(document.getElementById("cv_str").value);
  document.getElementById("cv_result").value = countVowel(word);
}

/*
Exercise-5
Write a JavaScript function that accepts a string as a
parameter and converts the
first letter of each word of the string in upper case.
Example string : 'the quick brown fox'
Expected Output : 'The Quick Brown Fox '
 */
function upper_case(string1) {
  var narray = string1.split(" ");
  var result1 = [];
  for (var x = 0; x < narray.length; x++)
    result1.push(narray[x].charAt(0).toUpperCase() + narray[x].slice(1));
  return result1.join(" ");
}
function capital() {
  var words = String(document.getElementById("cl_str").value);
  document.getElementById("cl_result").value = upper_case(words);
}

/*
 Exercise-6
Write a JavaScript program to get the current date.
Expected Output :
mm-dd-yyyy, mm/dd/yyyy or dd-mm-yyyy, dd/mm/yyyy
*/
function date_() {
  var today = new Date();
  var dd = today.getDate();
  var mm = today.getMonth() + 1;
  var yyyy = today.getFullYear();
  if (dd < 10) {
    dd = "0" + dd;
  }
  if (mm < 10) {
    mm = "0" + mm;
  }
  var date_index = document.querySelector("#date_formet");
  switch (date_index.selectedIndex) {
    case 1:
      var today = `${dd}/${mm}/${yyyy}`;
      document.getElementById("show").value = today;
      break;
    case 2:
      var today = `${mm}/${dd}/${yyyy}`;
      document.getElementById("show").value = today;
      break;
    case 3:
      var today = `${dd}-${mm}-${yyyy}`;
      document.getElementById("show").value = today;
      break;
    case 4:
      var today = `${mm}-${dd}-${yyyy}`;
      document.getElementById("show").value = today;
      break;
  }
}
// const btn = document.querySelector('#btn');
//         const sb = document.querySelector('#framework')
//         btn.onclick = (event) => {
//             event.preventDefault();
//             // show the selected index
//             alert(sb.selectedIndex);
//         };

// /*Exercise-7
// Write a JavaScript program to calculate number of days left until next Christmas.
//  */
// var today = new Date();
// var cmus = new Date(today.getFullYear(), 11, 25);
// if ((today.getMonth() == 11) & (today.getDate() > 25)) {
//   cmus.setDate(cmus.getFullYear() + 1);
// }
// var one_day = 1000 * 60 * 60 * 24;
// console.log(Math.ceil((cmus.getTime() - today.getTime()) / one_day)) +
//   "days to next christmas.";
function cal_date(){
var today = new Date();
var b_date = new Date(document.getElementById("fulldate"));
if ((today.getMonth() == 11) & (today.getDate() > 25)) {
  b_date.setDate(b_date.getFullYear() + 1);
}
var one_day = 1000 * 60 * 60 * 24;
console.log(Math.ceil((b_date.getTime() - today.getTime()) / one_day)) +
  "days to that date";
}
// /*Exercise-8
//  Write a JavaScript program to calculate multiplication and division of two
// numbers (input from user).
//  */
// function mul(a, b) {
//   return a * b;
// }
// function div(a, b) {
//   return a / b;
// }
// let v1 = number(prompt("Enter the first value"));
// let v2 = number(prompt("enter the second value"));
// console.log(
//   "Multiplied Value =" + mul(v1, v2) + "\n Divided Value =" + div(v1, v2)
// );
// /*JavaScript Conditional Statement and loops: Exercise-1
// Write a JavaScript program that accept two integers and display the larger. */
// var x = prompt("first value: ");
// var y = prompt("second value: ");
// if (x > y) {
//   console.log("large integer is:" + x);
// } else {
//   console.log("large integer is: " + y);
// }

// /*JavaScript Conditional Statement and loops: Exercise-2
// Write a JavaScript conditional statement to find the sign of product of three numbers.
// Display an alert box
// with the specified sign.*/
// var x = 3;
// var y = -7;
// var z = 2;
// if (x > 0 && y > 0 && z > 0) {
//   alert("The sign is +");
// } else if (x < 0 && y < 0 && z < 0) {
//   console.log("The sign is -");
// } else if (x > 0 && y < 0 && z < 0) {
//   console.log("The sign is +");
// } else if (x < 0 && y > 0 && z < 0) {
//   console.log("The sign is +");
// } else {
//   console.log("The sign is -");
// }

// /*JavaScript Array : Exercise-1 with Solution
// Write a JavaScript function to check whether an `input` is an array or not.
// Test Data :
// document.write(is_array('w3resource'));
// document.write(is_array([1, 2, 4, 0]));
// false
// true
// */
// var is_array = function (input) {
//   if (toString.call(input) === "[object Array]") return true;
//   return false;
// };
// console.log(is_array("w3resource"));
// console.log(is_array([1, 2, 4, 0]));

// /*
// JavaScript Array : Exercise-7 with Solution
// Write a JavaScript program to sort the items of an array.
// Sample array : var arr1 = [ 3, 8, 7, 6, 5, -4, 3, 2, 1 ];
// Sample Output : -4,-3,1,2,3,5,6,7,8
//  */
// var arr1 = [29, 22, -32, -2, -6, -77, -1, 0, 3, 4, 2, 6, 7];
// arr1.sort(function (a, b) {
//   return a - b;
// });
// console.log(arr1);

// /*
// Write a JavaScript for loop that will iterate from 0 to 15. For each iteration, it will
// check if the current number is odd or even, and display a message to the screen.
// Sample Output :
// "0 is even"
// "1 is odd"
// "2 is even"
//  */
// for (let i = 0; i <= 15; i++) {
//   if (i % 2 === 0) {
//     console.log(i + " is Even\n");
//   } else {
//     console.log(i + " is Odd\n");
//   }
// }
