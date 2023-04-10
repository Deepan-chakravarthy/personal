
function multiplyBy() {
  var a = document.getElementById("firstNumber").value;
  var b = document.getElementById("secondNumber").value;
  mul = a * b;
  document.getElementById("result").value = mul;
}
function divideBy() {
  var a = document.getElementById("firstNumber").value;
  var b = document.getElementById("secondNumber").value;
  div = a / b;
  document.getElementById("result").value = div;
}

//String reverse order
function reverse_word(n) {
  var n = String(document.getElementById("word").value);
  var rev = n.split("").reverse().join("");
  // }   console.log(Number(reverse_num(33)));
  document.getElementById("reverse").value = rev;
}

//Voewel Count
function vowel_count() {
  var ex = String(document.getElementById("vow").value);
  var vcount = 0;
  var vowel_list = "aeiouAEIOU";
  for (var x = 0; x < ex.length; x++) {
    if (vowel_list.indexOf(ex[x]) !== -1) {
      vcount += 1;
    }
  }
  document.getElementById("vowel").value = vcount;
}

// Christmas date
function christmas() {
  today = new Date();
  var cmas = new Date(today.getFullYear(), 11, 25);
  if (today.getMonth() == 11 && today.getDate() > 25) {
    cmas.setFullYear(cmas.getFullYear() + 1);
  }
  var one_day = 1000 * 60 * 60 * 24;
  date1 = Math.ceil((cmas.getTime() - today.getTime()) / one_day) + " days left until Christmas !!!";
  document.getElementById("date").value = date1;
}
