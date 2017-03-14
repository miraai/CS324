def prvi(a, b, op):
    return{
        '+' : a + b,
        '-' : a - b,
        '*' : a * b

    }.get(op, a + b)

rez = prvi(1 , 2, '+')
rez1 = prvi(2, 3, '-')
rez2 = prvi(4, 5, '*')

print(rez)
print(rez1)
print(rez2)