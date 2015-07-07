// 同期バージョン
var fs = require('fs');
var argv = require('argv');
var _ = require('underscore');

var arg = argv.run().targets;
var num = parseInt(arg[0]);

Array.prototype.chunk = function(chunkSize) {
  var results = [];
  for (var i=0; i<this.length; i+=chunkSize)
    results.push(this.slice(i,i+chunkSize));
  return results;
};

var buf = fs.readFileSync('../../hightemp-2.txt', 'utf-8');
var arr = buf.split("\n");
arr.pop();

var result = arr.chunk(num);
console.log(result);
