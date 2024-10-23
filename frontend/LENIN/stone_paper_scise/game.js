let chooseobject={
    
    'rock' :{
        'rock':'draw',
        'paper':'lose',
        'scissor':'win'
    },

    'paper' :{
        'rock':'win',
        'paper':'draw',
        'scissor':'lose'
    },

    'scissor' :{
        'rock':'lose',
        'paper':'win',
        'scissor':'draw'
    },
}

function check(input)
{
 var choice = ["rock",'paper','scissor'];
 var number = Math.floor(Math.random()*3);   
 console.log(number);
 let computerchoose = choice[number];
 let result;

 switch(chooseobject[input][computerchoose]){
    
    case 'win':
    result='you win🤩 - computer lose🤕';
    break;

    case 'lose':
    result='you lose🤕 - computer win🤩';
    break;

    default :
    result='match draw😇';

 }
 
console.log(result);
document.getElementById('result').textContent=result;
}