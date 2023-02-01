s = "xx"

def foo():
	global s
	s += "sss"
	print(s)
    
foo()
print(s)