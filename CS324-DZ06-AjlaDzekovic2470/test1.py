def first(niz = []):
    return niz.pop(0)

def last(niz = []):
    return niz.pop(-1)

def tail(niz = []):
     niz.pop(0)
     return niz

def init(niz = []):
    niz.pop(-1)
    return niz

niz = [1, 2, 3, 4, 5, 6]
print (init(niz))
