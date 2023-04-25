# Declare/create an empty list
empty_list_1 = Array.new(0)
empty_list_2 = []
puts "empty_list_1:", empty_list_1
puts "empty_list_2:", empty_list_2

# Initialize a list with some values
list = ['Apple', 'Avocado', 'Dragonfruit', 'Grapefruit', 'Grapes', 'Hazelnut', 'Kiwi', 'Lime', 'Tangelo']
another_list = Array.new(6, "Apple")
puts "list:", list
puts "another_list:", another_list

# Check if the list is empty or not
is_empty_1 = list.empty?
is_empty_2 = empty_list_1.eql? []
puts "is_empty_1:", is_empty_1, "is_empty_2:", is_empty_2

# Add a new element to a list
list << "Raspberries" # add Raspberries to the array
list.push("Cherries") # add Cherries to the array
list.unshift("Watermelon") # add Watermelon to the beginning
puts "list after adding items:", list

# Check if a particular element exists in the list
does_Raspberries_exist = list.include?("Raspberries") # check if 5 exists in the list
puts "does_Raspberries_exist:", does_Raspberries_exist

# Remove a particular element from the list
list.delete_at(0) # delete item at index 0
list.delete("Dragonfruit") # delete 10 if it exists
puts "list after deleting items:", list

# Get the head and the tail of a list
head1, *tail1 = list # same as python :)
head2, tail2 = list[0], list[1..-1] # another way
puts "head1:", head1, "tail1:", tail1

# Print all of the elements in the list
puts "list:", list # simply prints all of the elements line by line
list.each {|e| print e, " "}; print "\n" # another way of printing them in one line

