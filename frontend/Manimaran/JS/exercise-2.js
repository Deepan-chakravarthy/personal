alert("welcome to my class");
//1 ex------------------------------------------------
function reverse(n)
{
	n = n + " ";
	return n.split("").reverse().join("");
}
console.log(Number(reverse(32243)));
//2 ex------------------------------------------------

function alphabet_order(str)
  {
return str.split('').sort().join('');
  }
console.log(alphabet_order("webmaster"));

//3 ex-----------------------------------------------

function vowel_count(str1)
{
  var vowel_list = 'aeiouAEIOU';
  var vcount = 0;
  
  for(var x = 0; x < str1.length ; x++)
  {
    if (vowel_list.indexOf(str1[x]) !== -1)
    {
      vcount += 1;
    }
  
  }
  return vcount;
}
console.log(vowel_count("The quick brown fox"));

//5 ex --------------------------------------------
function uppercase(str)
{
  var array1 = str.split(' ');
  var newarray1 = [];
   
  for(var x = 0; x < array1.length; x++){
      newarray1.push(array1[x].charAt(0).toUpperCase()+array1[x].slice(1));
  }
  return newarray1.join(' ');
}
console.log(uppercase("the quick brown fox"));

//6 ex-----------------------------------------------
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

//7 ex--------------------------------------------
today=new Date();
var cmas=new Date(today.getFullYear(), 11, 25);
if (today.getMonth()==11 && today.getDate()>25)
{
cmas.setFullYear(cmas.getFullYear()+1);
}  
var one_day=1000*60*60*24;
console.log(Math.ceil((cmas.getTime()-today.getTime())/(one_day))+
" days left until Christmas!");

//Write a JavaScript program to calculate multiplication and division of two
//numbers (input from user).
num1 = prompt("Input the First integer")
num2 = prompt("Input the First integer")
function multiplyBy()
{
        num1 = document.getElementById("firstNumber").value;
        num2 = document.getElementById("secondNumber").value;
        document.getElementById("result").innerHTML = num1 * num2;
}

function divideBy()
{
        num1 = document.getElementById("firstNumber").value;
        num2 = document.getElementById("secondNumber").value;
document.getElementById("result").innerHTML = num1 / num2;
}

//JavaScript Conditional Statement and loops: Exercise-1
//with Solution
//Write a JavaScript program that accept two integers and display the larger.

var num1, num2;
num1 = window.prompt("Input the First integer", "0");
num2 = window.prompt("Input the second integer", "0");
                                                 
if(parseInt(num1, 10) > parseInt(num2, 10))
  {
  console.log("The larger of "+ num1+ " and "+ num2+ " is "+ num1+ ".");
  }  
else
  if(parseInt(num2, 10) > parseInt(num1, 10))
  {
  console.log("The larger of "+ num1+" and "+ num2+ " is "+ num2+ ".");
  }                  
else
  {
   console.log("The values "+ num1+ " and "+num2+ " are equal.");
  }

  //JavaScript Conditional Statement and loops: Exercise-2
//with Solution
//Write a JavaScript conditional statement to find the sign of product of three numbers. Display an alert box
//with the specified sign.
var x=3;
var y=-7;
var z=2;
if (x>0 && y>0 && z>0)
{
       alert("The sign is +");
}
else if (x<0 && y<0 && z<0)
        {
          console.log("The sign is -");
        }
        else if (x>0 && y<0 && z<0)
        {
          console.log("The sign is +");
        }
        else if (x<0 && y>0 && z<0)
        {
          console.log("The sign is +");
        }
        else
        {
          console.log("The sign is -");
        }
//JavaScript Array : Exercise-1 with Solution
//Write a JavaScript function to check whether an `input` is an array or not.
//Test Data :
//document.write(is_array('w3resource'));
//document.write(is_array([1, 2, 4, 0]));
//false
//true
var is_array = function(input) {
    if (toString.call(input) === "[object Array]")
      return true;
    return false;  
      };
  console.log(is_array('w3resource'));
  console.log(is_array([1, 2, 4, 0]));

  //JavaScript Array : Exercise-2 with Solution
//Write a JavaScript function to clone an array.
//Test Data :
//document.write(array_Clone([1, 2, 4, 0]));
//document.write(array_Clone([1, 2, [4, 0]]));
//[1, 2, 4, 0]
//[1, 2, [4, 0]]
array_Clone = function(arra1) {
    return arra1.slice(0);
       };
   console.log(array_Clone([1, 2, 4, 0]));
   console.log(array_Clone([1, 2, [4, 0]]));

//JavaScript Array: Exercise-5 with Solution
//Write a simple JavaScript program to join all elements of the following array into
//a string.
//Expected Output :
//"Red,Green,White,Black"
//"Red,Green,White,Black"
//"Red+Green+White+Black"
myColor = ["Red", "Green", "White", "Black"];
console.log(myColor.toString());
console.log(myColor.join());
console.log(myColor.join('+'));

//JavaScript Array : Exercise-7 with Solution
//Write a JavaScript program to sort the items of an array.
//Sample array : var arr1 = [ 3, 8, 7, 6, 5, -4, 3, 2, 1 ];
//Sample Output : -4,-3,1,2,3,5,6,7,8
var arr1=[-3,8,7,6,5,-4,3,2,1];
    var arr2=[];
    var min=arr1[0];
    var pos;
    var max=arr1[0];
    for (i=0; i<arr1.length; i++)
    {
            if (max<arr1[i]) max=arr1[i];
    }
   
    for (var i=0;i<arr1.length;i++)
    {
            for (var j=0;j<arr1.length;j++)
            {
                    if (arr1[j]!="x")
                    {
                            if (min>arr1[j])
                            {
                                    min=arr1[j];
                                    pos=j;
                            }
                    }
            }
            arr2[i]=min;
            arr1[pos]="x";
            min=max;
    }
    console.log(arr2);


//Write a JavaScript for loop that will iterate from 0 to 15. For each iteration, it will
//check if the current number is odd or even, and display a message to the screen.
//Sample Output :
//"0 is even"
//"1 is odd"
//"2 is even"
for (var x=0; x<=15; x++) {
    if (x === 0) {
            console.log(x +  " is even");
    }
    else if (x % 2 === 0) {
            console.log(x + " is even");  
    }
    else {
            console.log(x + " is odd");
    }
}

//Write a JavaScript conditional statement to find the largest of five numbers.
//Display an alert box to show the result.

var a = prompt("Enter 1st no : ");
     var b = prompt("Enter 2nd no : ");
     var c = prompt("Enter 3rd no : ");
     var d = prompt("Enter 4th no : ");
     var e = prompt("Enter 5th no : ");
     if(a>b && a>c && a>d && a>e)
        alert(a+" is greatest no.");
     else if(b>a && b>c && b>d && b>e)
        alert(b+" is greatest no.");
     else if(c>a && c>b && c>d && c>e)
        alert(c+" is greatest no.");
     else if(d>a && d>b && d>c && d>e)
        alert(d+" is greatest no.");
     else
        alert(e+" is greatest no.");
