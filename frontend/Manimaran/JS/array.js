//arrays

const number=[1,2,3,4,5,6,7,8,9,10];
// for Each
//value,index,array

number.forEach((value)=>{
    console.log(value);
});

number.forEach((value,index)=>{
    console.log("index :"+index+ " value:"+value);
});

const users =[
    {full_name:"Ram",age:12,city:"Salem",salary:10000},
    {full_name:"Sam",age:15,city:"Chennai",salary:10500},
    {full_name:"Ravi",age:22,city:"Namakkal",salary:12000},
    {full_name:"Joes",age:18,city:"Hosur",salary:6000},
    {full_name:"Aureen",age:47,city:"Dharmapuri",salary:10000},
    {full_name:"Stanley",age:10,city:"Salem",salary:8000},
  ];

  console.table(users)
  users.forEach((value)=>
    {
        console.log(value.full_name)

    });

//MAP()
//VALUE,INDEX,ARRAY

let sqrt=number.map((value)=>{
    return Math.sqrt(value).toFixed(2);
})
console.table(sqrt);


const user =[
    {full_name:"Ram",age:12,city:"Salem",salary:10000},
    {full_name:"Sam",age:15,city:"Chennai",salary:10500},
    {full_name:"Ravi",age:22,city:"Namakkal",salary:12000},
    {full_name:"Joes",age:18,city:"Hosur",salary:6000},
    {full_name:"Aureen",age:47,city:"Dharmapuri",salary:10000},
    {full_name:"Stanley",age:10,city:"Salem",salary:8000},
  ];

  console.table(user);

  let eligible_status=user.map((user)=>({
   /* name:user.name,
    age:user.age,
    city:user.city,
    salary:user.salary,*/
    ...user,

    status:user.age>=18?"Eligible":"Not Eligible"

  }))
console.table(eligible_status);

//SLICE OPERATOR
//slice(start,end)

const numbe=[1,2,3,4,5,6,7,8,9,10]
console.log(numbe)
console.log("slice(2):"+numbe.slice(2));
console.log("slice(2,5):"+numbe.slice(2,5));

//splice
/*
splice is to remove element in array
it will change orginal array

//aplice(start,length,new elements)
*/

const n1=[1,2,3,4,5,6,7,8,9,10]

console.log("Before splice:"+n1)
let removed_elements=n1.splice(2);
console.log("Removed Items :" +removed_elements);
console.log("After splice:"+n1);



const n2=[1,2,3,4,5,6,7,8,9,10]
console.log("Before splice:"+n2)
removed_elements=n2.splice(2,2);
console.log("Removed Items :" +removed_elements);
console.log("After splice:"+n2)


const n3=[1,2,3,4,5,6,7,8,9,10]
console.log("Before splice:"+n3)
removed_elements=n3.splice(2,2,34,54);
console.log("Removed Items :" +removed_elements);
console.log("After splice:"+n3)



const n4=[1,2,3,4,5,6,7,8,9,10];
console.log("Before Splice :"+n4);
n4.splice(2,0,100,200);
console.log("After Splice :"+n4);


//concat
const a=[10,20,30];
const b=[40,50,60];
const c=[70,80,90];

let d=a.concat(b);
console.log(d);

d=a.concat(b,c);
console.log(d);

d=a.concat(b,c,25,35,45,55);
console.log(d);

d=a.concat(b,c,25,35,45,55,['a','b','c']);
console.log(d);

console.table(d);


//SORT

const names=["mani","karun","sara","vimal","ayya",]
console.log("Before sort :"+names);
names.sort();
console.log("After sort:"+names);

//sortong number

const num=[10,100,25,150,45,80,9]
num.sort((a,b)=>{
    return a-b;//assending
    // return b-a; //desending
})

console.log("compare sort : "+num);

// Sorting particular data


const userse =[
    {full_name:"Ram",age:12,city:"Salem",salary:10000},
    {full_name:"Sam",age:15,city:"Chennai",salary:10500},
    {full_name:"Ravi",age:22,city:"Namakkal",salary:12000},
    {full_name:"Joes",age:18,city:"Hosur",salary:6000},
    {full_name:"Aureen",age:47,city:"Dharmapuri",salary:10000},
    {full_name:"Stanley",age:10,city:"Salem",salary:8000},
  ];

  console.table(userse);

//   //sort by age
  userse.sort((a,b)=>{
    return a.age-b.age;
  });
  console.table(userse);

  //sort by name
  userse.sort((a,b)=>{
    if(a.full_name>b.full_name) return 1;
    if(a.full_name<b.full_name) return -1;
    return 0;
  });

  console.table(userse);


  //2 method sort by name

  userse.sort((a,b)=>{
    return a.full_name-b.full_name;
    
  })
  console.table(userse);


  //fill (valus,start,end)

  let n=[1,2,3,4,5,6]
  console.log("befor fill : "+n);
//  n.fill(20);
//  n.fill(20,3);
 n.fill(20,3,4)
  console.log("After fill : "+n); 


  //incldes(value,start_index)

  const products=["pen","pencil","Praser","Box"];
  result=products.includes("pen");
  console.log(result);
  result=products.includes("pen",2);
  console.log(result);


  //array. join(separator)
  const productse=["pen","pencil","Praser","Box"];
  console.log(productse);
//   result=productse.join("|");
//   console.log(result);
 console.log(products.join()); //Deafult, as Separator
 console.log(productse.join("|"));// | as separaor


 //REVERSE
const r=[1,2,3,4,5,6];
console.log("Before Reverse :"+r);
r.reverse();
console.log("After Reverse :"+r)

//Array Element With Length Property

 const x= {0:10, 1:20, 2:30, 3:40, length: 4};
 console.log(x);

 Array.prototype.reverse.call(x);
 console.log(x);


 //PUSH  --adding element in last index // adding two array

 let y=[1,2,3,4,5];
 y.push(90);
 console.log(y);  
y.push(50,45,34,65);
console.log(y);

 let fruits=["apple","banana"];
 console.log(fruits)
 fruits.push("mango","pineapple")
console.log(fruits);
 
//Merging two array
let users1 = ["Ram","Sam","Rsvi"];
console.log(users1)
let users2 = ["Rajesh","kumar"];

users1.push(...users2);
console.log(users1);

//pop - removing element in last index

const user3 =['ram','Sam','Ravi','Kumar'];
console.log(user3);
console.log(user3.pop());
console.log(user3);
console.log(user3.pop());
console.log(user3);

//shift - removing element from first index
const user4=['ram','Sam','Ravi','Kumar'];
console.log(user4);
console.log(user4.shift());
console.log(user4);

// Unshift -  adding element in first index
const user5=['ram','Sam','Ravi','Kumar'];
console.log(user5);
console.log(user5.unshift("mark"));
console.log(user5);

students=["mani","ravi","ram","suresh","veera"]
console.log("Before unshift :" +students);
let length=students.unshift("Tiya");
console.log("Length :" +length);
console.log("After unshift :" +students);


len =students.unshift("Riys","suresh","Thendral");
console.log("Length :" +len)
console.log("After Unshift :" +students)