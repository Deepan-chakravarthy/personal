
setInterval(setClock, 1000)
const hourHand = document.querySelector('[data-hour-hand]')
const minuteHand = document.querySelector('[data-minute-hand]')
const secondHand = document.querySelector('[data-second-hand]')

function setClock() {
  const currentDate = new Date()
  const secondsRatio = currentDate.getSeconds() / 60
  const minutesRatio = (secondsRatio + currentDate.getMinutes()) / 60
  const hoursRatio = (minutesRatio + currentDate.getHours()) / 12
  setRotation(secondHand, secondsRatio)
  setRotation(minuteHand, minutesRatio)
  setRotation(hourHand, hoursRatio)
}

function setRotation(element, rotationRatio) {
  element.style.setProperty('--rotation', rotationRatio * 360)
}

setClock()

function displayTime(){
  var dateTime= new Date();
  var hrs = dateTime.getHours(-12);
  var min = dateTime.getMinutes();
  var sec =dateTime.getSeconds();
  var secn =document.getElementById("sessions");
  
// if(hrs > 12){
//   hrs = hrs - 12;
//  }

  document.getElementById("hours").innerHTML=hrs;
  document.getElementById("minutes").innerHTML=min;
  document.getElementById("seconds").innerHTML=sec;

  if(hrs>=12){
    secn.innerHTML="PM"
  }
  else{
    secn.innerHTML="AM"
  }

   


}

setInterval(displayTime, 10);