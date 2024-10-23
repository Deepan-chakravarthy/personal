// let gab=['gabi','tomas',8,{fname:"gabriel",age:23},4,8,{fname:"jibriel",age:23}];
//  console.log(gab);
// // console.log(gab[3],gab[6]);
// gab.push(3);

// let num="456789";
// for(let i=0;i<=num.length;i++){
// console.log(num[i]);}

// let nums="456789";
// for(let i=nums.length;i>=0;i--){
// console.log(num[i]);}


// function getRandomInt(min,max){
// min=Math.ceil(min);
// max=Math.floor(max);
// return Math.floor(Math.random()*(max-min)+min);}
// let result=getRandomInt(0,2);
// console.log(result);




// let num1=2;
// if (num1==result)
// console.log("rock")
// else if (num1!=result)
// console.log("paper")
//else 
// console.log("scissor")

// let num=0;
//  if (num=result) console.log("rock")
//  else if (num=1) console.log("paper")
//  else console.log("scissor");
// let num=0;
// if(num=result)
// console.log("rock")
// else if (num!=result)
// console.log("paper")
// else 
// console.log("scissor")


// let num1=0;
// function input(num1){
//     return  num1;
// }
// user=input(num1)
// console.log(user);


//  str="5677";
//  pair=
// console.log(pair);
// ------------- players choice -----------------
// const input1="stone";
// const input2="paper";
// const input3="scissor";
// -------------computers choice -----------------


function output_(input){

const com=["stone","paper","scissor"]
let comresult=com[Math.floor(Math.random()*3)];
var final = document.getElementById("compresult");
document.getElementById('input').value=input;
document.getElementById('compinput').value =comresult;

 if ((input=="stone") &&( comresult=="stone")) {
    final.value="match draw"
 }
 else if ((input=="stone") &&( comresult=="scissor")) {
    final.value="you win !"
}
else if ((input=="stone") &&( comresult=="paper")) {
    final.value="you lost "
}
else if ((input=="paper") &&( comresult=="paper")) {
    final.value="match draw"
}
else  if ((input=="paper") &&( comresult=="stone")) {
    final.value="you win !"
}
else if ((input=="paper") &&( comresult=="scissor")) {
    final.value="you lost"
}
else if ((input=="scissor") &&( comresult=="scissor")){ 
    final.value="match draw"
}
else  if ((input=="scissor") &&( comresult=="stone")) {
    final.value="you lost"
}
else if ((input=="scissor") &&( comresult=="paper")) {
    final.value="you win !"
}
}
// function getRandomInt(min,max){
// min=Math.ceil(min);
// max=Math.floor(max);
// return Math.floor(Math.random()*(max-min)+min);}
// let result=getRandomInt(0,2);
// console.log(result);