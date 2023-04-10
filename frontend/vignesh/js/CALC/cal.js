let screen = document.getElementById('screen');
buttons = document.querySelectorAll('button');
let screenValue = '';
for (item of buttons) {
    item.addEventListener('click', (e) => {
        buttonText = e.target.innerText;

        if (buttonText == '*') {
            screenValue += buttonText;
            screen.value = screenValue;
        } 
        else if (buttonText == 'AC') {
            screenValue = " ";
            screen.value = screenValue;
        }
        else if(buttonText == 'C'){
            
            screen.value= screen.value.slice(0,-1)
        }
        else if (buttonText == '=') {
            screen.value = eval(screenValue);
        }
        else {
            screenValue += buttonText;
            screen.value = screenValue;
        }

    }
    )
}