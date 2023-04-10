const HOURS =document.querySelector("#hour");
const MINUTES =document.querySelector("#minute");
const SECONDS  =document.querySelector("#second");

// console.log(document.querySelector("#hour")); 

const time = new Date();
console.log( new Date());

let hrs = time.getHours();
let mins = time.getMinutes();
let secs = time.getSeconds();




// console.log(hrs);  
// console.log(mins);
// console.log(secs);

console.log("Hour: " + hrs + " Minute: " + mins + " Second: " + secs);

let hrsposition= (hrs * 360) / 12 + (mins * (360 / 60)) / 12;
let minsposition= (mins * 360) / 60 + (secs * (360 / 60)) / 60;
let secsposition  = (secs * 360) / 60;
console.log((hrs * 360) / 12 + (mins * (360 / 60)) / 12);

// console.log(minsposition);
// console.log(hrsposition);
// console.log(secsposition);
// console.log(hrsposition);


const runClock = () => {
    // Set each position when the function is called
    hrs = hrs + 3 / 360;
    mins = mins + 6 / 60;
    secs = secs + 6;
    // console.log(hrs)
    // console.log(mins);
    // console.log(secs);
  
    // Set the transformation for each arm
    HOURS.style.transform = "rotate(" + hrs + "deg)";
    MINUTES.style.transform = "rotate(" + mins + "deg)";
    SECONDS.style.transform = "rotate(" + secs + "deg)";
    // console.log(HOURS.style.transform );
  };
  
  // Use the inbuilt setInterval function to invoke the method we created earlier
  setInterval(runClock, 1000);
//   console.log(setInterval(runClock, 1000));
// console.log(runClock);

