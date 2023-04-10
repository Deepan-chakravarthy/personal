//Getting Id And Store It In Variable
const hr=document.querySelector('#Hr')
const min=document.querySelector('#Min')
const sec=document.querySelector('#Sec')
const deg=6;
//Getting and storing time Hour,Minute,Second to a variable
setInterval(()=>{
let day=new Date();
let Hour=day.getHours()*30;
console.log(Hour)
let Minute=day.getMinutes()*deg;
console.log(Minute)
let Second=day.getSeconds()*deg;
console.log(Second)

//style.transform is used to rotate a div element
hr.style.transform=`rotateZ(${(Hour)+(Minute/12)}deg)`;
min.style.transform=`rotateZ(${Minute}deg)`;
sec.style.transform=`rotateZ(${Second}deg)`;
})