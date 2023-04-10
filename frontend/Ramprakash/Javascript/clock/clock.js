function setClock() {
    var time = new Date();
    var hd = 360.0 * time.getHours() / 12 + 30.0 * time.getMinutes() / 60;
    var md = 360.0 * time.getMinutes() / 60 + 6.0 * time.getSeconds() / 60;
    var sd = 360.0 * time.getSeconds() / 60 + 6.0 * time.getMilliseconds() / 1000;
    document.getElementById("div-hour").style.transform = "rotate(" + hd + "deg)";
    document.getElementById("div-minute").style.transform = "rotate(" + md + "deg)";
    document.getElementById("div-second").style.transform = "rotate(" + sd + "deg)";
}
window.onload = function () {
    setClock();
    setInterval(function () {
        setClock();
    }, 10);
};