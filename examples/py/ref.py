import sys

a = [1, 2, 3]

print(sys.getrefcount(a)) # 2
 
def func(b):
    print(sys.getrefcount(b)) # 3
 
func(a)
print(sys.getrefcount(a)) # 2

print(sys.getrefcount(123456)) # 3
b = 123456
print(sys.getrefcount(123456)) # 4
b = 123
print(sys.getrefcount(123456)) # 3


print(sys.getrefcount("abc123")) # 3
x = "abc123"
print(sys.getrefcount("abc123")) # 4


y = [x]
print(sys.getrefcount("abc123")) # 5


z = [x, x]
print(sys.getrefcount("abc123")) # 7


t = [z]
print(sys.getrefcount(z)) # 3

del t
print(sys.getrefcount(z)) # 2


k = z
print(sys.getrefcount(z)) # 3
print(id(k), id(z)) # 4332279232 4332279232