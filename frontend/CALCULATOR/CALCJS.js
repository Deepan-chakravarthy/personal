let outputscreen = document.getElementById("siva");
function display(num){
    outputscreen.value +=num;
}
function calculate(){
    try{
        outputscreen.value =eval(outputscreen.value);
    }
    catch(err)
    {
        document.getElementById("siva").value="invalid error"
       
    }

}
function clea (){
    outputscreen.value= "";
}

function del(){
    outputscreen.value  =outputscreen.value.slice(0,-1);
}