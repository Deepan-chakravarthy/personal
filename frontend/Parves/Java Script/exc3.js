function sandy(w){
    w=w+"";
    return w.split("").reverse().join("");
 }
 
 function reverse()
 {
    o=Number(document.getElementById("summa").value)
    document.getElementById("out").value=sandy(o)
 }
 function santhosh()
 {
    s=String(document.getElementById("in").value)
    document.getElementById("ot").value=sandy(s)
 }
function star(){
let y='';
for(i=0;i<5; i++){
    for(j=1;j<=i;j++){
        y+= j +' ';
    }
     y+= ' \n';
    
}
return(y)
}

function san(){
    document.getElementById("bb").innerHTML=star()
}
function number(){
let s="";
for(i=1;i<=5;i++){
    for(j=0;j<i;j++){
        s+=i+" ";
    }
    s+="\n";
}
return(s)
}
 function sand(){
    document.getElementById("ss").innerHTML=number()
 }
function mudiv(){
 s=Number(document.getElementById("firt").value);
 c=Number(document.getElementById("Second").value);
  document.getElementById("output").value=s*c;

//  d=prompt("Enter the  dev first numbers");
//  t= prompt("Enter the  div another number");
}
// document.getElementById=innerHTML.value("multiplication number is ",+s*c,"devision number is ",+d/t);f
function div(){
    d=Number(document.getElementById("ft").value);
    f=Number(document.getElementById("sd").value);
    document.getElementById("put").value =d/f;

}
