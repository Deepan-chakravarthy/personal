const hour = document.getElementById('hourbar')
const min = document.getElementById('minutebar')
const sec = document.getElementById('secondbar')

setInterval(()=>{
    const current = new Date()
    const hours = current.getHours()
    const minute = current.getMinutes()
    const seconds = current.getSeconds()

    hourrot=30*hours+minute/2-90;
    minrot=6*minute-90;
    secrot=6*seconds-90;

    hour.style.transform = `rotate(${hourrot}deg)`;
    min.style.transform = `rotate(${minrot}deg)`;
    sec.style.transform = `rotate(${secrot}deg)`;

}, 100);

