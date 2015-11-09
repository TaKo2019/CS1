def update(n):
    if n % 2 != 0:
        n = 3*n + 1
        return(n)
    else:
        n = n//2
        return(n)

def update2(n):
    x = 1
    print(n)
    while n != 1:
        print(update(n))
        n = update(n)
        x = x+1
    print(x)
        
def hs(n):
    if n !=1:
        update2(n)
    if n==1:
        print("1")
    
