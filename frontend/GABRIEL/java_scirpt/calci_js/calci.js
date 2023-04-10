// function uiresult(num){
// document.getElementById("num").value+=eval(num);
// }

let result = document.getElementById("ui");
let uiresult = (num) => {
  result.value += num;
};
//  let eqlresult=(num)=>{
//    result.value = eval(result.value)
//    ;
// }
let eqlresult = (num) => {
  try {
    result.value = eval(result.value);
  } 
  catch (err) {
    result.value = "தவறான பதிவு";
  }
};
function clears() 
{
  result.value = " ";
}
function dele(){
    result.value=result.value.slice(0,-1);
}
