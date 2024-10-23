 const player = document.querySelector("#player");
 const computer = document.querySelector("#computer");
 const result = document.querySelector("#result");
 const choicebtn = document.querySelectorAll(".choicebtn");

let players;
let computers;
let results;

choicebtn.forEach(button => button.addEventListener("click", () => { 
    
    players = button.textContent;
    computerTurn();
    player.textContent = `players :${players}`;
    computer.textContent =`computers: ${computers}`;
    result.textContent = checkwinner();
}));

function computerTurn()
{
    const randNum = Math.floor(Math.random()* 3)+1; 

    switch(randNum)
    {
        case 1:
        computers ="ROCK";
        break;
        case 2:
        computers ="PAPER";
        break;
        case 3:
        computers ="SCISSORS";
        break;
    }
}
function checkwinner()
{
    if(players == computers)
    {
        return "DRAW!";
    }
    else if (computers == "ROCK")
    {
        return(players == "PAPER")? "You win" :"You lose";
    }
    else if(computers == "PAPER")
    {
        return(players == "SCISSORS")? "You win" :"You lose";
    }
    else if(computers == "SCISSORS")
    {
        return(players == "ROCK")? "You win" :"You lose";
    }
}