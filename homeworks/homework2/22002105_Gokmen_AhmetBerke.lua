function PrintArr(arr) for k, e in pairs(arr) do io.write(k) io.write(": ") io.write(e) io.write(" ") end io.write("\n") end

-- 1. Are formal and actial parameters type checked?
print("\n 1.")

function printElems(elem1, elem2) print(elem1) print(elem2) end
printElems("sa", 1)
printElems(1, "as")

-- 2. Are keyword (named) parameters supported?
print("\n 2.")

-- They are actually supported, buy its by using tables in lua
function kwParameters(tab)
  print(tab.arg1)
  print(tab.arg2)
end

kwParameters{arg1="berke", arg2="gokmen"} -- this is how, but this is actually a shorter syntax of passing a table to the function 
kwParameters({arg1="gokmen", arg2="berke"})

-- 3. Are default paremeters supported?
print("\n 3.")

-- They are supported, but not directly in the function parameter list
function defParameters(req, opt1, opt2) 
  opt1 = opt1 or 1 -- this is how we make default parameters
  opt2 = opt2 or 2
  print(req, opt1, opt2)
end

defParameters(10)
defParameters(10, 20)
defParameters(10, 20, 30)

-- 4. What are the paremeter passing methods provided?
print("\n 4.")

val = 10
list = {1, 2, 3}
dictionary = {a = 5, b = 10}

print("before", val)
PrintArr(list)
PrintArr(dictionary)

function testPassing(_val, _list, _dictionary)
  _val = _val + 10 -- does not change the actual value
  _list[#_list + 1] = 155 -- modifies the actual value
  _dictionary["new"] = 333 -- modifies the actual value
  print("inside", _val)
  PrintArr(_list)
  PrintArr(_dictionary)
end

testPassing(val, list, dictionary)
print("after", val)
PrintArr(list)
PrintArr(dictionary)

-- 5. Can subprograms be passed as parameters? If so, how is the referencing environment of the passed subprogram bound?

-- it seems that the referencing environment is shallow binded
print("\n 5.")

text = "outside"

function sendMessage(messageGenerator)
  text = "inside"
  print(messageGenerator())
end

function buildHiMessage() return "Hi " .. text end

sendMessage(buildHiMessage)