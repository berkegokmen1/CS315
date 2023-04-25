function PrintArr(arr) for _, e in pairs(arr) do io.write(e) io.write(" ") end io.write("\n") end

-- Declare/create an empty list
Empty_arr = {}
print("Empty list: ")
PrintArr(Empty_arr)

-- Initialize a list with some values
Arr = {'Apple', 'Avocado', 'Dragonfruit', 'Grapefruit', 'Grapes', 'Hazelnut', 'Kiwi', 'Lime', 'Tangelo'}

print("List with items: ")
PrintArr(Arr)

-- Check if the list is empty or not
Is_empty = #Arr == 0
print("is_empty:", Is_empty)

-- Add a new element to a list
Arr[#Arr + 1] = "Pomegranate" -- first way
table.insert(Arr, "Raspberries") -- another way
print("After adding elements: ")
PrintArr(Arr)

-- Check if a particular element exists in the list
function Exists(arr, el) -- could not figure out another or one liner way of doing this
  for _, e in ipairs(arr) do
    if e == el then
      return true
    end
  end
  return false
end

Does_Pomegranate_exist = Exists(Arr, "Pomegranate")
Does_Melon_exist = Exists(Arr, "Melon")
print("Does_Pomegranate_exist:", Does_Pomegranate_exist, "Does_Melon_exist:", Does_Melon_exist)

-- Remove a particular element from the list
table.remove(Arr, 5)
print("After removing element at index 5 (indexes start at 1): ")
PrintArr(Arr)

Temp = {}
for _, e in pairs(Arr) do if e ~= "Kiwi" then Temp[#Temp + 1] = e end end
Arr = Temp
print("After removing element Kiwi (filtering): ")
PrintArr(Arr)

-- Get the head and the tail of a list
Head, Tail = Arr[1], {} -- in this language, it's really hard to do an inplace filtering or slicing. Thus I had to create a new array
for _, e in pairs(Arr) do if e ~= Arr[1] then Tail[#Tail + 1] = e end end
print("Head:", Head)
io.write("Tail: ") PrintArr(Tail)

-- Print all of the elements in the list
PrintArr(Arr)
