function outer(outer_var) {
  var x = 10;
  function inner(inner_var) {
    console.log('outer_var=', outer_var, 'inner_var=', inner_var, 'x=', x);
  }

  return inner;
}

const n = outer(10);

delete outer;

n(20);
