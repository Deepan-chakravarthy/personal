
let com = document.getElementById("com")
let res = document.getElementById("res")              //stone -0,paper-1,scissor-2
let pr = document.getElementById("pr")
let cr = document.getElementById("cr")
prs=0;
crs=0;


function score(player,computer){
    if(player==computer){
       res.innerHTML=`Match draw`
       com.innerHTML=`Same move as u`
    }else if(player==0 && computer==1){
        res.innerHTML=`Computer win`
        com.innerHTML=`Paper`
        crs++;
        cr.textContent=crs
    }else if(player==0 && computer==2){
        res.innerHTML=`Player win`
        com.innerHTML=`Scissor`
        prs++;
        pr.textContent=prs
    }else if(player==1 && computer==0){
        res.innerHTML=`Player win`
        com.innerHTML=`Stone`
        prs++;
        pr.textContent=prs
    }else if(player==1 && computer==2){
        res.innerHTML=`Computer win`
        com.innerHTML=`Scissor`
        crs++;
        cr.textContent=crs
    }else if(player==2 && computer==0){
        res.innerHTML=`Computer win`
        com.innerHTML=`Stone`
        crs++;
        cr.textContent=crs
    }
    else{                                          //if(player==2 && computer==1)
        res.innerHTML=`Player win`
        com.innerHTML=`Paper`                  
        prs++;
        pr.textContent=prs
    }
}



let random = ()=>Math.floor(Math.random()*3)

let move1=()=>{
    m=0;
    score(0,random())
}

let move2=()=>{
    m=1;
    score(1,random())
}

let move3=()=>{
    m=2;
    score(2,random())
}