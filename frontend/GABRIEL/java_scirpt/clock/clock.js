// function greet(){
//     console.log("hello world");
// }

// function greet() {
//     console.log('Hello world');
// }

// let intervalId = setTimeout(greet, 3000);
// console.log('Id: ' + intervalId);   


// function greet(){
//     console.log("hello world")
// }
// let fname=setTimeout(greet,3000);
// console.log('id '+ fname);


// function groot(){
//     console.log("helloo world")
// }
// let sname=setTimeout(groot,4000);
// console.log('id '+ sname);

// function showTime(fname,lname){
//     let dateTime= new Date();
//     let time= dateTime.toLocaleTimeString();
//     console.log('hello' + ' ' +  fname + ' ' + lname);

// }

// setTimeout(showTime,2000,"hi","sandy");


// let id=setTimeout(showTime,1000);

// clearTimeout(id);
// console.log("settimeout shopped");

// function greet(){
//     console.log("hello world !");
// }
// setInterval(greet,1000);


// function showTime(){
//     let dateTime=new Date();
//    let time= dateTime.toLocaleTimeString();
//    console.log(time)
// }
// setInterval(showTime,1000);

setInterval(setClock,1000)

const hourHand =document.querySelector('[data-hour-hand]')
const minuteHand =document.querySelector('[data-minute-hand]')
const secondHand =document.querySelector('[data-second-hand]')

function setClock(){
    const currentDate=new Date();
    const seconds=currentDate.getSeconds() / 60;
    const minutes=(seconds + currentDate.getMinutes()) / 60;
    const hours=(minutes + currentDate.getHours())/12;
    setRotation(secondHand, seconds)
    setRotation(minuteHand, minutes)
    setRotation(hourHand, hours)
}
 function setRotation( element,rotationRatio){
    element.style.setProperty('--rotation',rotationRatio*360)
 }
 setClock()
  document.getElementById('mp3').value=setInterval(alarm,5000);
 

