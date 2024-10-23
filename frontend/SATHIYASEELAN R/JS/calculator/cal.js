let resultsc =document.getElementById('resultscreen');

resultsc.addEventListener('keypress',function(event){
    if(event.key === "Enter"){
        document.getElementById('equal').click();
    }
});

function display(number){
    resultsc.value += number;
}
function calculate(){
    try{
        resultsc.value = eval(resultsc.value);
    }
    catch(err){
    resultsc.value = "Syntax Error..";
    }
}
function cl(){
        resultsc.value = "";
    }
function del(){
        resultsc.value = resultsc.value.slice(0,-1);
    }

