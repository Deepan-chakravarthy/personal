var n=prompt('NUMBER OF ROWS PRINT');
var star='';
for(i=0;i<2*n;i++)
{
    var c=i>n ? 2*n-i:i;
    for(s=0;s<n-c;s++){
        star +=(' ');
    }
    for(j=0;j<c;j++){
        star +=(' *');
    }
    star +=('\n');
}
document.getElementById('star').innerText=star;