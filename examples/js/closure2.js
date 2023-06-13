function func_out() {
  func_out_param = 1;

  function func_in() {
    func_in_param = 2;
    func_out_param += 31;
    console.log(
      'func_in_param',
      func_in_param,
      'func_out_param',
      func_out_param
    );
  }

  return func_in;
}

a = func_out();
delete func_out;
a();
a();

// func_out();
