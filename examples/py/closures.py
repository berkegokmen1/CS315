def func_out():
		func_out_param = 1

		def func_in():
			nonlocal func_out_param

			func_in_param = 2
			func_out_param = 31
			print("func_in_param", func_in_param, "func_out_param", func_out_param)
    
		return func_in

a = func_out()
del func_out
a()