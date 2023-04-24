# Declare/create an empty list
empty_l = []

# Initialize a list with some values
l = [1, 2, 3, 4]

# Check if the list is empty or not
is_empty = len(l) == 0

# Add a new element to a list
l.append(5) # add 5
l += [6] # add 6
l.extend([7]) # add 7

# Check if a particular element exists in the list
does5Exist = l.count(5) != 0 # basic way
does50Exist = len(list(filter(lambda e: e == 50, l))) != 0 # a more complicated way

# Remove a particular element from the list
l.pop(len(l) - 1) # remove element at index, in this case the last element
l = list(filter(lambda e: e != 5, l)) # remove 5 from the array, a little bit more complicated
l = [e for e in l if e != 1] # with list comprehensions

# Get the head and the tail of a list
head1, *tail1 = l
head2, tail2 = l[0], l[1:-1] # another way...

# Print all of the elements in the list
list(map(lambda e: print(e), l)) # pythonic way of foreach
