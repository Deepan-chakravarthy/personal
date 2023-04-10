const botchoiceview = document.getElementById("SUSKE_UCHICHA");
const playerchoiceview = document.getElementById("NARUTO_UZUMAKI");
const resultview = document.getElementById("result");

const possiblechoices = document.querySelectorAll('button');

possiblechoices.forEach(possiblechoices => possiblechoices.addEventListener('click',(e) => {
    userchoice = e.target.id;
    playerchoiceview.innerHTML = userchoice;
    botchoicegenerator();
    results();

}))

function botchoicegenerator(){
    const RandomNumber = Math.floor(Math.random()*3)+1;
    if(RandomNumber === 1)
    {
        botchoosen = "ROCK";
    }
    if(RandomNumber === 2)
    {
        botchoosen = "PAPER";
    }
    if(RandomNumber === 3)
    {
        botchoosen = "SISSORS";
    }
    botchoiceview.innerHTML = botchoosen;
    console.log(RandomNumber);
}


function results(){
    if(botchoosen === userchoice)
    {
        result = "Hey it's a draw. Please try again";
    }
    if(botchoosen === "ROCK" && userchoice === "PAPER")
    {
        result = "NARUTO UZUMAKI WINS";
    }
    if(botchoosen === "PAPER" && userchoice === "SISSORS")
    {
        result = "NARUTO UZUMAKI WINS";
    }
    if(botchoosen === "SISSORS" && userchoice === "ROCK")
    {
        result = "NARUTO UZUMAKI WINS";
    }


    if(botchoosen === "PAPER" && userchoice === "ROCK")
    {
        result = "SUSKE UCHICHA WINS";
    }
    if(botchoosen === "SISSORS" && userchoice === "PAPER")
    {
        result = "SUSKE UCHICHA WINS";
    }
    if(botchoosen === "ROCK" && userchoice === "SISSORS")
    {
        result = "SUSKE UCHICHA WINS";
    }

    resultview.innerHTML=result;
    
}