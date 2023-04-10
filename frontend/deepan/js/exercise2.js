/*
Exercise-1 with Solution
Write a JavaScript function that reverse a number.
Sample Data and output:
Example x = 32243;
Expected Output : 34223
*/

function reverse(x) {
    return (
      parseFloat(
        x
          .toString()
          .split('')
          .reverse()
          .join('')
      ) * Math.sign(x)
    )                 
}
console.log (reverse(5468800))

/*
Exercise-2 with Solution
Write a JavaScript function that returns a passed string with letters in
alphabetical order.
Example string : 'webmaster'
Expected Output : 'abeemrstw'
Note: Assume punctuation and numbers symbols are not included in the passed
string..
*/

function reverseString(str) {
    return(
        str
        .split("")
        .sort()
        .join("")
    )  
}
console.log(reverseString("deepan"))

/*
Exercise-3 with Solution
Write a JavaScript function that accepts a string as a parameter and counts the
number of vowels within the string.
Note : As the letter 'y' can be regarded as both a vowel and a consonant, we do
not count 'y' as vowel here.
Sample Data and output:
Example string : 'The quick brown fox'
Expected Output : 5
*/

{
  let string="The quick brown foxy"; 
    string1=string
               .match(/[aeiou]/gi) 
               .length
  console.log(string1)
    string2=string
               .match(/[^aeiou]/gi)
               .join("")
               .replace("y"," ")
               .split(" ")
               .join("")
               .length
  console.log(string2)             
}


/*
Exercise-5 with Solution
Write a JavaScript function that accepts a string as a parameter and converts the
first letter of each word of the string in upper case.
Example string : 'the quick brown fox'
Expected Output : 'The Quick Brown Fox '
*/

{
  let string="The quick brown foxy"; 
     string1=string
                  .replace(/(^\w|\s\w)/g, n => 
                  n.toUpperCase())
    console.log(string1)              
}


/*
Exercise-6 with Solution
Write a JavaScript program to get the current date.
Expected Output :
mm-dd-yyyy, mm/dd/yyyy or dd-mm-yyyy, dd/mm/yyyy
*/

{
  let today=new Date()
     console.log(today)
     console.log(today.toLocaleString())
     console.log(today.toLocaleDateString())
     console.log(today.toLocaleTimeString())        //for my references
     console.log(today.getTime())
     console.log(today.getHours())
     console.log(today.getDate())
     console.log(today.getDay())
     console.log(today.getFullYear())
     console.log(today.getMonth()+1)               //for month index value start from 0.so,+1
}

{
  let today=new Date()
      today1=today
                 .toLocaleDateString()
      console.log(today1) 
      today2=today1
                  .replaceAll("/","-") 
      console.log(today2)
      console.log(today.getDate()+"-"+(today.getMonth()+1)+"-"+today.getFullYear())
      console.log(today.getDate()+"/"+(today.getMonth()+1)+"/"+today.getFullYear())                                         
}


/*
Exercise-7 with Solution
Write a JavaScript program to calculate number of days left until next Christmas.
*/

{
  let today=new Date()
  let Christmas=new Date(today.getFullYear(),11,25)
  let time_diff=(Christmas.getTime() - today.getTime())      //time difference
   days_left=time_diff/(1000*60*60*24)                       //for one day(1000=milliseconds,60-seconds,60-minutes,24-hours)
   console.log(Math.ceil(days_left))                         //ceil for convert decimal to next number 
}


/*
Exercise-1 with Solution
Write a JavaScript function to check whether an `input` is an array or not.
Test Data :
document.write(is_array('w3resource'));
document.write(is_array([1, 2, 4, 0]));
*/


{
  let a='w3resource'
  let b=[1, 2, 4, 0]
  console.log(a instanceof Array)
  console.log(b instanceof Array)
}


/*
Exercise-2 with Solution
Write a JavaScript function to clone an array.
Test Data :
document.write(array_Clone([1, 2, 4, 0]));
document.write(array_Clone([1, 2, [4, 0]]));
[1, 2, 4, 0]
[1, 2, [4, 0]]
*/

{
  let array=[1, 2, 4, 0]
  let array1=[...array]
    console.log(array1)
  let array2=[1, 2, [4, 0]]
  let array3=[...array2]
    console.log(array3)
}


/*
Exercise-5 with Solution
Write a simple JavaScript program to join all elements of the following array into
a string.
Expected Output :
"Red,Green,White,Black"
"Red,Green,White,Black"
"Red+Green+White+Black"
*/


{
   let a=['Red','Green','White','Black']
          b=a
             .join()                             //join with comma
    console.log(b)   
    
    let c=['Red','Green','White','Black']
          d=c
             .join(" ")                          //join with space
    console.log(d)

    let e=['Red','Green','White','Black']
          f=e
             .join("+")                          //join with plus
    console.log(f)
}


/*
Exercise-7 with Solution
Write a JavaScript program to sort the items of an array.
Sample array : var arr1 = [ 3, 8, 7, 6, 5, -4,-3, 2, 1 ];
Sample Output : -4,-3,1,2,3,5,6,7,8
*/

{
  let array=[ 3, 8, 7, 6, 5, -4, -3, 2, 1 ]
              array1=array
                         .sort((a,b) => {
                           return a-b                   //for ascending order
                          })
                console.log(array1)  
                         
  let array2=[ 3, 8, 7, 6, 5, -4, -3, 2, 1 ]
              array3=array2
                         .sort((a,b) => {
                            return b-a                 //for descending order
                          })
                console.log(array3)                        
}


/*
Write a JavaScript for loop that will iterate from 0 to 15. For each iteration, it will
check if the current number is odd or even, and display a message to the screen.
Sample Output :
"0 is even"
"1 is odd"
"2 is even"
*/

{
  let string=""
  for(i=1;i<=10;i++){
    if(i%2==0){
      string +=i+" is even \n"
    }else
      string += i+" is odd \n"
  }
  console.log(string)
}


/*
Write a JavaScript conditional statement to find the largest of five numbers.
Display an alert box to show the result.
*/

{
  let num=[10,100,55,150,35]
  let max=num[0]
  for(i=0;i<=num.length;i++){
       if(max<=num[i])
       max=num[i]
  }        
   console.log(max)            
}


/*
Write a JavaScript program to calculate multiplication and division of two
*/

{
  let a=10
  let b=5
  let multi=(a*b)
  let div=(a/b)                 
  console.log(multi)
  console.log(div)
}

{
  function operation(a,b){                 //by using functions
     return add=a+b,
            sub=a-b,
            multi=a*b,
            div=a/b
  }
  operation(100,50)
  console.log(add,sub,multi,div)
}


/*JavaScript Conditional Statement and loops:
Exercise-1
with Solution
Write a JavaScript program that accept two integers and display the larger.*/

{
  let a=10
  let b=5
  if(a<b){
    console.log(`${b} is greater`)
  }
  else if(a>b){
    console.log(`${a} is greater`)
  }
  else{
    console.log(`${a} and ${b} are equal`)
  }
}

/*Exercise-2
with Solution
Write a JavaScript conditional statement to find the sign of product of three numbers. Display an alert box
with the specified sign.*/

{
   let a=10;
   let b=8;
   let c=-6;
   let product=a*b*c;
   let sign=Math.sign(product)             //math.sign return positive as 1 and negative as -1.
   if(sign==1){
     console.log(`sign is positive`)
   }else{
    console.log(`sign is negative`)
   }
}