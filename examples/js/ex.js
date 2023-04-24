a = 5;
console.log('global, a=' + a);

function foo(arg) {
  var a = arg * 2;
  console.log('foo, a=' + a + ' b=' + b);
  var b = 7;
  {
    console.log('block, a=' + a + ' b=' + b);
    var b = b * 2;
    console.log('block, a=' + a + ' b=' + b);
    let c = b * 3;
    console.log('block, a=' + a + ' b=' + b + ' c=' + c);
  }
  console.log('foo, a=' + a + ' b=' + b);
}

foo(a + 3);

console.log('global, a=' + a);
