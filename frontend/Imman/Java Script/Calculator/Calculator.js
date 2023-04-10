let dsp = document.getElementById('display');
let buttons = document.querySelectorAll('button');
let screenValue = '';
for (item of buttons) {
    item.addEventListener('click', (e) => {
        buttonText = e.target.innerText;
        console.log('Button text is ', buttonText);
        if (buttonText == 'x') {
            buttonText = '*';
            screenValue += buttonText;
            dsp.value = screenValue;
        }
        else if (buttonText == 'AC') {
            screenValue = "";
            dsp.value = screenValue;
        }
        else if (buttonText == '=') {
            dsp.value = eval(screenValue);
        }
        else {
            screenValue += buttonText;
            dsp.value = screenValue;
        }

    })
}