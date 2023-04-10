var n = 4;
var string = "";
for (let i = 1; i <= n; i++) {
  for (let j = 0; j < i; j++) {
    string += "*";
  }
  string += "<br>";
}
document.write(string);


var n = 4;
var string = "";
for (let i = 0; i < n; i++) {
  // printing star
  for (let k = 0; k < n - i; k++) {
    string += "*";
  }
  string += "<br>";
}
document.write(string);

var n = 4;
var s = "";
for (let i = 1; i <= n; i++) {
  for (let j = 0; j < i; j++) {
    s += "*";
  }
  s += "\n";
}
for (let i = 1; i <= n - 1; i++) {
  for (let j = 0; j < n - i; j++) {
    s += "*";
  }
  s += "<br>";
}
document.write(s);