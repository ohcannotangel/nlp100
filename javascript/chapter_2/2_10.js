var fs = require('fs');
var buf = fs.readFileSync('../../hightemp-2.txt');
var arr = buf.toString().split("\n");
console.log(arr.length - 1);
