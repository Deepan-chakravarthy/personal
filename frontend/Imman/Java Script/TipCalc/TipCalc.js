const Bill_Input1 = document.getElementById("Bill_Input");
const Tip_Input1 = document.getElementById("Tip_Input");
const No_of_People1 = document.getElementById("No_of_People");
const Per_Person_Amt = document.getElementById("Per_Person_Amt");

let No_of_People2 = Number(No_of_People1.innerText)
const Calculate_Bill = () => {
  const Bill=Number(Bill_Input1.value);
  const Tip=Number(Tip_Input1.value);
  let Total = (Bill+ Tip)/No_of_People2;
  Per_Person_Amt.innerText = `${Total.toFixed(2)}`
}
const increasePeople = () => {
  No_of_People2+= 1
  No_of_People1.innerText = No_of_People2
  Calculate_Bill()
}

const decreasePeople = () => {
  if (No_of_People2 <= 1) {
    return
  }
  No_of_People2 -= 1
  No_of_People1.innerText = No_of_People2
  Calculate_Bill()
}