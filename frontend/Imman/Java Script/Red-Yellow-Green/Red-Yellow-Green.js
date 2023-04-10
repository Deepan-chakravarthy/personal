let reddiv = document.getElementById("red");
let yellowdiv = document.getElementById("yellow");
let greendiv = document.getElementById("green");

// reddiv.onclick=()=>{ console.log("Red")};
// yellowdiv.onclick=()=>{ console.log("yellow")};
// greendiv.onclick=()=>{ console.log("green")};

const squares = document.querySelectorAll(".colorSquare");
//console.log(squares);

// squares.forEach(squares=>squares.onclick=()=>console.log(squares.value))
/*squares.forEach=()=>console.log(squares.value)

const timeclicked = { 'red': 0, 'yellow': 0, 'green': 0 };
squares.foreach = (squares => 
    { 
    squares.onclick = () => {
        timeclicked[squares.value] += 1; 
        squares.innerText = timeclicked[squares.value]
    }
    })*/
const timeclicked = { 'red': 0, 'yellow': 0, 'green': 0 };
squares.forEach(squares => {
    squares.onclick = () => {
        timeclicked[squares.value] += 1;
        squares.innerText = timeclicked[squares.value];
    }
})

let clearScores=()=>{
    timeclicked.red = 0
    timeclicked.yellow = 0
    timeclicked.green = 0
    squares.forEach(squares => {
      squares.innerText = ''
    })
  }
const clearbtn = document.getElementById("Clear_btn")
clearbtn.onclick=()=>clearScores()