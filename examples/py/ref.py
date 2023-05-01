import sys
a =[1, 2, 3]

print(sys.getrefcount(a)) # 2
 
def func(b):
    print(sys.getrefcount(b)) # 3
 
func(a)
print(sys.getrefcount(a)) # 2