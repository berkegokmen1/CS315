void main() {
  // 1. Are formal and actual parameters type checked?
  print("\n 1.");
    
  void noTypeCheck(dynamic x, dynamic y) {
    print('$x $y');
  }
  
  noTypeCheck('a', 1);
  noTypeCheck(1, '1');

  void typeCheck(String x, int y) {
    print('$x .. $y');
  }

  typeCheck("Berke", 20);
  // typeCheck(20, "sa"); // this will cause an error if uncommented
  
  // 2. Are keyword (named) parameters supported?
  print("\n 2.");
  
  void kwParameters({required dynamic x, required dynamic y}) {
    print('$x $y');
  }
  
  kwParameters(x: "x", y: 3); // this will cause an error (1)
  
  // 3. Are default parameters supported?
  print("\n 3.");
  
  void defaultParameters(dynamic x, {dynamic y = 44}) {
    print(x + y);
  }
  
  defaultParameters(10);
  
  // 4. What are the parameter passing methods provided?
  print("\n 4.");
  
  int k = 10; // a value
  List<int> arr = [1, 2, 3]; // an object
  Map<String, int> obj = {'a': 1};
  List<int> dummyArr = [4, 5, 6];
  
  void parameterPassing(int k, List<int> arr, Map<String, int> obj, List<int> dummyArr) {
    k += 10; // value, original will not be affected
    arr.add(10); // property change, original will be affected
    obj['b'] = 10; // property change, original will be affected
    dummyArr = [0]; // reassigned, original will not be affected
    print('in $k $arr $obj $dummyArr');
  }
  
  parameterPassing(k, arr, obj, dummyArr);
  print('out $k $arr $obj $dummyArr');
  
  // 5. Can subprograms be passed as parameters? If so, how is the referencing environment of the passed subprogram bound?
  print("\n 5.");
  
  // The referencing environment is statically bound. 
  int param = 20;
  void refEnvTest() {
    print(param);
  }
  
  void performOperation(void Function() operation) {
    int param = 10;
    operation();
  }
  
  performOperation(refEnvTest); 
}
