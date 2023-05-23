# 1. Are formal and actial parameters type checked?
puts "\n", "1."

def type_check(var1, var2, var3)
   puts var1, var2, var3
end

type_check "sa", 2, 3
type_check 4, 10.4, "as"

# 2. Are keyword (named) parameters supported?
puts "\n", "2."

def kw_args(name:, surname:)
  puts name, surname
end

kw_args name: "berke", surname: "gokmen"
kw_args surname: "gokmen", name: "berke"

# 3. Are default paremeters supported?
puts "\n", "3."

def default_param (var1 = "sa", var2: 10)
   puts var1, var2
end

default_param "as", var2: 30
default_param "as"
default_param

# 4. What are the paremeter passing methods provided?
puts "\n", "4."

# Ruby uses pass by object reference (python terminology)
def pass_param(obj)
  obj["x"] = "sa" # this will change the original object
end

def pass_number(num) 
  num += 30 # this will not affect the original object
end

number = 10
param = {"x" => 123}
puts param
puts number
pass_param(param) # this changes the original object
pass_number(number) # this does not change the original object
puts param
puts number

# 5. Can subprograms be passed as parameters? If so, how is the referencing environment of the passed subprogram bound?
puts "\n", "5."

# the referencing environment of the passed subprogram is it's own
def perform_operation(operation)
	num = 200
  operation.call()
end

num = 99

def print_num()
  num = 100
  puts "inside", num # this will use 100
end

# This is the way of passing methods as parameters in ruby it seems
perform_operation(method(:print_num))