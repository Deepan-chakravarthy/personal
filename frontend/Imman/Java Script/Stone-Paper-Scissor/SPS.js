const Rst1 = document.getElementById("Rst");
let inh1 = document.getElementById("inh");
let aer1 = document.getElementById("aer");
let aer2 = document.getElementById("aer12");
let usercount=0;
let computercount=0;

//Main Function
function Result(user1, computer1) {
    if (user1 == computer1) {
        console.log("Match Draw")
        check(computer1)
        Rst1.innerText = `Match Draw`
    }
    else if (user1==0 && computer1==1){
        console.log("User Wins")
        usercount++
        aer1.innerText=`${usercount}`
        check(computer1)
        Rst1.innerText = `User Wins`
    }
    else if(user1==0 && computer1==2){
        console.log("Computer Wins")
        computercount++
        aer2.innerText=`${computercount}`
        check(computer1)
        Rst1.innerText = `Computer Wins`
    }
    else if(user1==1 && computer1==0){
        console.log("User Wins")
        usercount++
        aer1.innerText=`${usercount}`
        check(computer1)
        Rst1.innerText = `User Wins`
    }
    else if(user1==1 && computer1==2){
        console.log("Computer Wins")
        computercount++
        aer2.innerText=`${computercount}`
        check(computer1)
        Rst1.innerText = `Computer Wins`
    }
    else if(user1==2 && computer1==0){
        console.log("Computer Wins")
        computercount++
        aer2.innerText=`${computercount}`
        check(computer1)
        Rst1.innerText = `Computer Wins`
    }
    else if(user1==2&&computer1==1){
        console.log("User Wins")
        usercount++
        aer1.innerText=`${usercount}`
        check(computer1)
        Rst1.innerText = `User Wins`
    }
    else{
    }
}

//Computer Random
let rand = () => z = Math.floor(Math.random() * 3);

//Onclick Event Functions
let user1 = () => {
    c = 0;
    Result(c, rand())
}
let user2 = () => {
    c = 1;
    Result(c, rand())
}
let user3 = () => {
    c = 2;
    Result(c, rand())
}

//Stone,Paper,Scissor
function check(computer1) {
    switch (computer1) {
        case 0:
            inh1.innerText = "Stone";
            break;
        case 1:
            inh1.innerText = "Paper";
            break;
        case 2:
            inh1.innerText = "Scissor";
            break;
    }
}
let Clear1=()=>{
    Rst1.innerText = "";
    inh1.innerText = "";
    usercount=0;
    computercount=0;
    aer1.innerText="";
    aer2.innerText="";
}