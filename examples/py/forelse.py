def sa():
    for i in range(10):
        yield i
        
a = sa()

print(next(a))
print(next(a))
print(next(a))
print(next(a))
print(next(a))
print(next(a))

# for i in sa():
#     print(i)