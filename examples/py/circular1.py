class MyClass:
    def __init__(self):
        pass
    
    def __del__(self):
        pass


a = MyClass()
a.obj = 7
a.obj = a

b = a.obj
del a

print(b)

