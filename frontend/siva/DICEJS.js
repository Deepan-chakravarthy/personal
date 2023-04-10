
  
    // Player name
    var player1 = "Player 1";
    var player2 = "Player 2";
    var player2 = "Player 3";
    // Function to change the player name
    function editNames() {
        player1 = prompt("Change Player1 name");
        player2 = prompt("Change player2 name");
        player2 = prompt("Change player3 name");
        document.querySelector("p.Player1").innerHTML = player1;
        document.querySelector("p.Player2").innerHTML = player2;
        document.querySelector("p.Player3").innerHTML = player3;
    }
  
    // Function to roll the dice
    function rollTheDice() {
        setTimeout(function () {
            var randomNumber1 = Math.floor(Math.random() * 6) + 1;
            var randomNumber2 = Math.floor(Math.random() * 6) + 1;
            var randomNumber3 = Math.floor(Math.random() * 6) + 1;
           
            document.querySelector(".img1").setAttribute("src",
                "dice" + randomNumber1 + ".jfif");

            document.querySelector(".img2").setAttribute("src",
                "dice" + randomNumber2 + ".jfif");
           
            document.querySelector(".img3").setAttribute("src",
                "dice" + randomNumber3 + ".jfif");    
  
                //if class-------

            if (randomNumber1 === randomNumber2 === randomNumber3) {
                document.querySelector("h1").innerHTML = "Draw!";
            }
  
            else if (randomNumber1 < randomNumber2 < randomNumber3) {
                document.querySelector("h1").innerHTML
                                = (player2 + " WINS!");
            }
  
            else {
                document.querySelector("h1").innerHTML
                                = (player1 + " WINS!");
            }
        }, 100);
    }



