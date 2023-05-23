# Are formal and actial parameters type checked?
def fun(x, y, z):
  return x + y + z


print(fun("1", "2", '3'))
print(fun(1, 2, 3))


# Are keyword (named) parameters supported?
def kw_params(x, y, z):
  return x * z - y


print(kw_params(y=10, z=30, x=40))
print(kw_params(20, z=50, y=60))


# Are default paremeters supported?
def default_params(x, y, z=10):
  return x * y / z


print(default_params(10, 12))
print(default_params(y=10, x=12))

# What are the paremeter passing methods provided?
def default_params(a, b, c):  
	a = 10
	b.append(10)
	c += 30
	print("in", a, b, c)

# The real way's name is pass by assignment
a = 15  # treated as pass by value
b = [1] # treated as pass by reference
c = 30 # treated as pass by value
default_params(a, b, c)
print("out", a, b, c)


# Can subprograms be passed as parameters? If so, how is the referencing environment of the passed subprogram bound?
text = "outside"

def subprogram_param(fun):
  text = "inside"
  return fun()


def sub():
  return text


print(subprogram_param(sub))
