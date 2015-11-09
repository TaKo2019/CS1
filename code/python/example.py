# assignment commands

x = 0
y = 6

# conditions

if (x > 0 or y == x):
    x = 0
    z = 10
else:
    x = 1
    z = 11

# iteration

times = 10
while(times > 0):
    print("Hello")
    times =(times - 1)

# Procedure call
def fun(a,b,c,x):
    result = a * (x*x) + b * x + c
    return result
