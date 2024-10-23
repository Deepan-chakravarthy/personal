// function change() {
//   if (document.getElementById("rock").src == "icon/rock.png") {
//     document.getElementById("rock").src = "icon/paper.png";
//   }

// the game
let comp_score = 0;
let player_score = 0;
function game(player) {
  // computer choice
  let computer = ["Rock", "Paper", "Scissor"];

  let com_choice = computer[Math.floor(Math.random() * 3)];
  var player_choice = player;
  document.getElementById("computer_dis").value = com_choice;
  //   game condition
  if (player_choice == com_choice) {
    player_score += Number(0);
    comp_score += Number(0);
    status_of = "Draw";

    document.getElementById("display").innerText = status_of;
    document.getElementById("play").value = player_score;
    document.getElementById("com").value = comp_score;
    //   } else if (player_choice == "Paper" && com_choice == "Rock") {
    //     player_score += Number(1);
    //     comp_score += Number(0);
    //     status_of = "You Win";
    //     // document.getElementById("computer_value").src = "icon/rock.png";

    //     document.getElementById("display").value = status_of;
    //     document.getElementById("play").value = player_score;
    //     document.getElementById("com").value = comp_score;
  } else if (
    (player_choice == "Rock" && com_choice == "Scissor") ||
    (player_choice == "Scissor" && com_choice == "Paper") ||
    (player_choice == "Paper" && com_choice == "Rock")
  ) {
    player_score += Number(1);
    comp_score += Number(0);
    status_of = "You Win";
    // document.getElementById("computer_value").src = "icon/Scissor.png";

    document.getElementById("display").innerText = status_of;
    document.getElementById("play").value = player_score;
    document.getElementById("com").value = comp_score;
    //   } else if (player_choice == "Scissor" && com_choice == "Paper") {
    //     player_score += Number(1);
    //     comp_score += Number(0);
    //     status_of = "You Win";
    //     // document.getElementById("computer_value").src = "icon/paper.png";

    // document.getElementById("display").value = status_of;
    // document.getElementById("play").value = player_score;
    // document.getElementById("com").value = comp_score;
  } else {
    comp_score += Number(1);
    status_of = "Computer Win";

    document.getElementById("display").innerText = status_of;
    document.getElementById("play").value = player_score;
    document.getElementById("com").value = comp_score;
  }


if (com_choice == "Rock") {
  document.getElementById("computer_value").src = "icon/rock.png";
} else if (com_choice == "Paper") {
  document.getElementById("computer_value").src = "icon/paper.png";
} else {
  document.getElementById("computer_value").src = "icon/Scissor.png";
}
}


function end_game() {
  if (player_score == comp_score) {
    window.confirm("Match draw!");
  } else if (player_score > comp_score) {
    window.confirm("😍You Win!!!😍");
  } else {
    window.confirm("😂You lose!!!😂");
  }
  player_score = 0;
  comp_score = 0;
}
