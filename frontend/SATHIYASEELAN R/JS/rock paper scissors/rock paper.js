const playertext = document.querySelector('#player');
const computertext = document.querySelector('#computer');
const resulttext = document.querySelector('#result');
const choicebutton = document.querySelectorAll(".button");

let player;
let computer;
let result;

choicebutton.forEach(btn => btn.addEventListener("click", () =>{
    player = btn.innerHTML;
    computerTurn();
    playertext.innerHTML=`Player: ${player}`;
    computertext.innerHTML=`Computer: ${computer}`;
    resulttext.innerHTML= checkWinner();
}));

function computerTurn(){
    const rnum = Math.floor(Math.random()*3)+1;
    switch(rnum){
        case 1:
        computer ="Rock ✊";
        break;
        case 2:
        computer ="Paper ✋";
        break;
        case 3:
        computer ="Scissor ✂️";
        break;
    }
}
function checkWinner(){
    if(player == computer){
        return "Draw 😨";
    }
    else if(computer == "Rock ✊"){
        return (player == "Paper ✋")?"you Win 😄":"You Lose 😭";
    }
    else if(computer == "Paper ✋"){
        return (player == "Scissor ✂️")?"you Win 😄":"You Lose 😭";
    }
    else if(computer == "Scissor ✂️"){
        return (player == "Rock ✊")?"you Win 😄":"You Lose 😭";
    }
}
