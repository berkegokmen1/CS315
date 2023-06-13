def ref_demo (x):
	print("x", x," id-", id(x))
	x=17
	print("x", x," id-", id(x))
	x=5
	print("x", x," id-", id(x))

a = 5
print("a", a," id-", id(a))

ref_demo(5)
ref_demo(a)