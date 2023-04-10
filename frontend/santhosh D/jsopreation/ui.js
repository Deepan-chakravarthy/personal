let s="";
for(i=1;i<=4;i++){
    for(j=1;j<=i;j++){
        s+=i+"&nbsp";
    }
    s+="<br>";
   
}
document.write(s);
//
document.write("<hr>")
let t="";
for(i=1;i<=4;i++){
    for(j=1;j<=i;j++){
        t+=j+"&nbsp";
    }
    t+="/n";
   
}
document.write(s);
//
document.write("<hr>")
let c="";
for(i=1;i<=4;i++){
    for(j=1;j<=i;j++){
        c+="*"+"&nbsp";
    }
    c+="<br>";
   
}
document.write(c);
//
document.write("<hr>")
let o="";
for(i=4;i>=1;i--){
    for(j=1;j<=i;j++){
        o+="*"+"&nbsp";
    }
    o+="<br>";
   
}
document.write(o);
document.write("<hr>")
//
let d="";
for(i=1;i<=5;i++){
    for(j=0;j<5-i;j++){
      d+="&nbsp"+"&nbsp";
    }
    for(k=1;k<=i;k++) 
    {  d+="*"+"&nbsp ";
}
    d+="<br>";
   
}
document.write(d);
document.write("<hr>")
//
let g="";
for(i=5;i>=1;i--){
    for(j=0;j<5-i;j++){
      g+="&nbsp"+"&nbsp";
    }
    for(k=1;k<=i;k++) 
    {  g+="*"+"&nbsp ";
}
    g+="<br>";
   
}
document.write(g);
document.write("<hr>");
//
let kk="";
for(i=1;i<=5;i++){
    for(j=0;j<5-i;j++){
      kk+="&nbsp"+"&nbsp";
    }
    for(k=1;k<=i;k++) 
    {  kk+="*"+"&nbsp ";
}
    kk+="<br>";
   
}
document.write(kk);
let hh="";
for(i=5;i>=1;i--){
    for(j=0;j<5-i;j++){
      hh+="&nbsp"+"&nbsp";
    }
    for(k=1;k<=i;k++) 
    {  hh+="*"+"&nbsp ";
}
    hh+="<br>";
   
}
document.write(hh);
document.write("<hr>")
//
let n = "";
let mm=prompt("number for the operation")

 for (let i = mm; i >= 1; i--) {
   
   for (let j = 1; j <=6 - i; j++) {
     n += "&nbsp ";
   }
   
   for (let k = 1; k < i; k++) {
     n += "*"+"&nbsp ";
   }
   n += "<br>";
 }
 for (let i = 1; i < mm; i++) {
    
    for (let j = 1; j < 6-i; j++) {
      n += "&nbsp ";
    }
    
    for (let k = 1; k <= i; k++) {
      n += "*"+"&nbsp ";
    }
    n += "<br>";
  }
  document.write(n);
  document.write("<hr>");
  //
  let oo="";
for(i=1;i<=5;i++){
    for(j=0;j<5-i;j++){
      oo+="&nbsp &nbsp ";
    }
    for(k=1;k<=i;k++) 
    {  oo+="*"+"&nbsp ";
}
    oo+="<br>";
   
}
document.write(oo);
document.write("<hr>");
//
let ss="";
for(i=5;i>=1;i--){
    for(j=0;j<=5-i;j++){
      ss+="&nbsp &nbsp ";
    }
    for(k=1;k<=i;k++) 
    {  ss+="*"+"&nbsp ";
}
    ss+="<br>";
   
}
document.write(ss);
document.write("<hr>");




// modules in javascripts
//export operations




