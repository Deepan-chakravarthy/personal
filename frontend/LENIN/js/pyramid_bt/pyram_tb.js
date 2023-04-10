var n=prompt('NUMBER OF ROWS PRINT');
var star='';
for(i=0;i<=n;i++)
{
    var c=n-i;
    for(s=0;s<n-c;s++){
        star +=(' ');
    }
    for(j=1;j<=c;j++){
        star +=(' *');
    }
    star +=('\n');
}
document.getElementById('star').innerText=star;