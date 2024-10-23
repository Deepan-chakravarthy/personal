function digitalClock() {
    //Getting And Storing The
    let Date_ = new Date();
    let Day1 = Date_.getDay(),
        Month1 = Date_.getMonth(),
        Date1 = Date_.getDate(),
        Year1 = Date_.getFullYear(),
        Hour1 = Date_.getHours(),
        Minute1 = Date_.getMinutes(),
        Second1 = Date_.getSeconds(),
        Period1 = "AM";


    if (Hour1 >= 12) {
        Period1 = "PM";
    }
    if (Hour1 == 0) {
        Hour1 = 12;
    }
    if (Hour1 > 12) {
        Hour1 -= 12;
    }

    Number.prototype.pad = function (digits) {
        for (var n = this.toString(); n.length < digits; n = 0 + n);
        return n;
    }

    let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    let week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    let ids = ["Day", "Month", "Date", "Year", "Hour", "Minute", "Second", "Period"];
    let values = [week[Day1], months[Month1], Date1.pad(2),Year1, Hour1.pad(2), Minute1.pad(2), Second1.pad(2), Period1];
    for (var i = 0; i < ids.length; i++)
        document.getElementById(ids[i]).firstChild.nodeValue = values[i];
}

function initClock() {
    digitalClock();
    window.setInterval("digitalClock()", 1);
}