// let display = document.getElementById('screen');
// let elements = document.querySelectorAll('button');
// let displayValue="";
// for (item of elements) {
//     item.addEventListener('click', (e)=>{
//         buttonText = e.target.innerText;
//         if(buttonText=='C'){
//             displayValue = "";
//             display.value = displayValue;
//         }else if(buttonText=='%'){
//             // displayValue +='/100';
//             display.value = displayValue/100;
//         }else if(buttonText=='←'){
//             displayValue=displayValue.slice(0,-1);
//             display.value = displayValue;
//         }else if(buttonText == '='){
//             display.value = eval(displayValue);
//         }else{
//             displayValue += buttonText;
//             display.value = displayValue;
//         }
//     })
// }
let display = document.getElementById("screen");

let buttons = Array.from(document.getElementsByClassName("btn"));

buttons.map((button) => {
  button.addEventListener("click", (e) => {
    switch (e.target.innerText) {
      case "C":
        display.value = "";
        break;
      case "←":
        if (display.value);
        {
          display.value = display.value.slice(0, -1);
        }
        break;
      case "=":
        try {
          display.value = eval(display.value);
        } catch {
          display.value = "Error !";
        }
        break;
      default:
        display.value += e.target.innerText;
    }
  });
});
