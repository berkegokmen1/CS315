a = undefined;

(function () {
  var your, symbols, here, if_they_need, to_be_shared, amongst_functions;

  x = 10;

  function doSomething() {
    console.log('your', your);
  }

  function doSomethingElse() {
    console.log('symbols', symbols);
  }

  doSomething();
  doSomethingElse();
})();

// console.log(your);

console.log(a);
console.log(x);
