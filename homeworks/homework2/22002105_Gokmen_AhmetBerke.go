package main

import "fmt"

func main() {
	// 1. Are formal and actual parameters type checked?
	fmt.Println("\n 1.")

	noTypeCheck := func(x interface{}, y interface{}) {
		fmt.Println(x, y)
	}

	noTypeCheck("a", 1)
	noTypeCheck(1, "1")

	typeCheck := func(x string, y int) {
		fmt.Println(x, y)
	}

	typeCheck("Berke", 20)
	// typeCheck(20, "sa") // this will cause an error if uncommented

	// 2. Are keyword (named) parameters supported?
	fmt.Println("\n 2.")

  // Go does not support named arguments
	// kwParameters := func(x int, y String) {
	// 	fmt.Println(x, y)
	// }

  // kwParameters(x: 10, y: "berke") // this will cause an error if uncommented

  // But we can implement it using structs...
  type InputParams struct {
    param2 int
    param1 int
  }

  kwParameters2 := func(in InputParams) {
    fmt.Println(in.param1 + in.param2)
  }

  // However this is not really named arguments, its just a way of achieving it...
  kwParameters2(InputParams{param1:20, param2:30})

	// 3. Are default parameters supported?
	fmt.Println("\n 3.")
  
  // Go does not really support default parameters, but we can achieve it as follows...
	defaultParameters := func(args ...int) {
	   val := 10; // The default value
    if len(args) > 0 {
      val = args[0]
    }
    fmt.Print("number: ")
    fmt.Println(val)
	}

  defaultParameters() // will print 10 (default value)
	defaultParameters(20) // will print 20

	// 4. What are the parameter passing methods provided?
	fmt.Println("\n 4.")

	// 4.1 Pass by value
  passByValueFunc := func(x int) {
    x++
    fmt.Print("in passByValueFunc: ")
    fmt.Println(x)
  }

  passByRefFunc := func(x *int) {
    *x++
    fmt.Print("in passByRefFunc: ")
    fmt.Println(*x)
  }

  a := 10
  b := 10
  
  fmt.Print("a before: ")
  fmt.Println(a)
  passByValueFunc(a)
  fmt.Print("a after: ")
  fmt.Println(a)
  
  fmt.Print("b before: ")
  fmt.Println(b)
  passByRefFunc(&b)
  fmt.Print("b after: ")
  fmt.Println(b)

	// 5. Can subprograms be passed as parameters? If so, how is the referencing environment of the passed subprogram bound?
	fmt.Println("\n 5.")

	// The referencing environment is statically bound.
	param := 20
	refEnvTest := func() { // This uses the above param's value (aka. static parent's)
		fmt.Println(param)
	}

	performOperation := func(operation func()) {
		// param := 10 // uncommented since when left open, compiler throws warning due to unused variable
		operation()
	}

	performOperation(refEnvTest)
}
