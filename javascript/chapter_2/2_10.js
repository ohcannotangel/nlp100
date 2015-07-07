
// 同期バージョン
var fs = require('fs');
var buf = fs.readFileSync('../../hightemp-2.txt', 'utf-8');
var arr = buf.split("\n");
console.log(arr.length - 1);


// 同期バージョン
fs.readFile('../../hightemp-2.txt', function(err, contents){
  var lines = contents.toString().split('\n').length - 1;
  console.log(lines);
});

