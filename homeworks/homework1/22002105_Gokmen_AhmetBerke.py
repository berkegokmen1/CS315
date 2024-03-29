# Declare/create an empty list
empty_l = []
print("empty list:", empty_l)

# Initialize a list with some values
l = ['Apple', 'Avocado', 'Cherries', 'Dragonfruit', 'Grapefruit', 'Grapes', 'Hazelnut', 'Kiwi', 'Lime', 'Nectarines']
print("list:", l)

# Check if the list is empty or not
is_empty = len(l) == 0
print("is_empty:", is_empty)

# Add a new element to a list
l.append("Raspberries") # add Raspberries
l += ["Tangelo"] # add Cherries
l.extend(["Watermelon"]) # add Watermelon
print("list after adding items:", l)

# Check if a particular element exists in the list
does_watermelon_exist = l.count("Watermelon") != 0 # basic way
does_pomegranate_exist = len(list(filter(lambda e: e == "Pomegranate", l))) != 0 # a more complicated way
print(f"does_watermelon_exist: {does_watermelon_exist}, does_pomegranate_exist {does_pomegranate_exist}")

# Remove a particular element from the list
l.pop(len(l) - 1) # remove element at index, in this case the last element
l = list(filter(lambda e: e != "Cherries", l)) # remove Cherries from the array, a little bit more complicated
l = [e for e in l if e != "Raspberries"] # with list comprehensions
print("list after removing items:", l)

# Get the head and the tail of a list
head1, *tail1 = l
head2, tail2 = l[0], l[1:len(l)+1] # another way...
print(f"head: {head1}, tail: {tail1}")

# Print all of the elements in the list
list(map(lambda e: print(e), l)) # pythonic way of foreach
