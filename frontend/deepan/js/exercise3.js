function reverse(x) {
    return (
        y= x.toString(),
      parseFloat(
        y
          .split('')
          .reverse()
          .join('')
      ) * Math.sign(x)
    )                 
}

document.addEventListener("keypress", (event)=> {                    
  if (event.key === "Enter"){                                       //using event listener for enter key
    let x=Number(document.getElementById("num").value)
    document.getElementById("r_num").innerHTML=reverse(x)
  }  
})

//////////////////////////////

function reverseString(str) {
    return(
        str
        .split("")
        .reverse()
        .join("")
    )  
}

function myfunction(){
    let x=String(document.getElementById("string").value)                    //using onkeypress
    document.getElementById("r_string").innerHTML=reverseString(x)
}

//////////////////////////

 function starpattern(n){
  let string="";
     for(let i=0;i<=n;i++){
      for(let j=0;j<=n-i;j++){
        string += " ";
      }
      for(let k=0;k<2*i-1;k++){
        string +="*";
      }
      string +="\n"
    }  
    return string;
 }
 function star(){
    let s=Number(document.getElementById("star").value)                      //using onclick(button)
    document.getElementById("a_star").innerHTML=starpattern(s)
}
    
 

 //////////////////////////////

 function starpattern1(n){
        let string="";
        for(let i=0;i<=n;i++){
          for(j=0;j<=n-i;j++){
            string += " ";
          }
          for(k=0;k<2*i-1;k++){
            string +="*";
          }
          string +="\n";
        }
      
        for(let i=1;i<=n;i++){
          for(j=0;j<=i;j++){
            string += " ";
          }
          for(k=0;k<2*(n-i)-1;k++){
            string +="*";
          }
          string +="\n"
        }
        return string;
 }

function star1(){
    let s=Number(document.getElementById("star1").value)                         //using onclick(button)
    document.getElementById("a_star1").innerHTML=starpattern1(s)
}