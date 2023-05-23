# What is the output of executing each of the following lines, in the order given ?
# >>> exec(open("quiz8.py").read())
# >>> foo = quiz(12)
# >>> foo(1)

a = 5
def quiz (q_par):
    x = 10
    def closure(c_par):
        global a
        print ("in closure, a=", a, "q_par=", q_par, "c_par=", c_par, "x=", x)
        if (q_par > a):
           a += c_par
        else:
           return "done."
    return closure



foo = quiz(10)

del quiz

foo(4)