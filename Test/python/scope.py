x = 300

def myfunc():
    nonlocal x
    x = 200
    print(x)


myfunc()

print(x)
