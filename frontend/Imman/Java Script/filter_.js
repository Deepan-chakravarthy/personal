//Loops and return an Array with matching conditions
const nums=[1,2,3,4,5,6];
console.log(nums.filter(nums=>nums>3));

//object and array
const actors=[{name_:'Imman',Worth:20000},{name_:'Lenin',Worth:2000},{name_:'Aditya',Worth:10000}];
let result=actors.filter(actors=>actors.Worth>2000);
/*h1.innerHTML = `<h1>${JSON.stringify(result)}</h1>` //Display full object with key and value on webpage*/
let names=result.map(result=>result.name_).join(",");
console.log(names);
h1.innerHTML = `<h1>${names}</h1>`
