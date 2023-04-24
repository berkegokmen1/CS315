# Declare/create an empty list
empty_list_1 = Array.new(0)
empty_list_2 = []

# Initialize a list with some values
list = Array.new(6) {|i| i}
another_list = [3, 2, 1]

# Check if the list is empty or not
is_empty_1 = list.empty?
is_empty_2 = list.eql? []

# Add a new element to a list
list << 6 # add 6 to the array
list.push(7) # add 7 to the array
list.unshift(-1) # add -1 to the beginning

# Check if a particular element exists in the list
list.include?(5) # check if 5 exists in the list

# Remove a particular element from the list
list.delete_at(0) # delete item at index 0
list.delete(10) # delete 10 if it exists

# Get the head and the tail of a list
head1, *tail1 = list # same as python :)
head2, tail2 = list[0], list[1..-1] # another way

# Print all of the elements in the list
puts list # simply prints all of the elements line by line
list.each {|e| print e, " "}; print "\n" # another way of printing them in one line

