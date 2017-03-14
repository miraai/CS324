arr1 = [1, 2, 3, 4]
arr2 = [1, 2, 3]

try:
    if len(arr1) == len(arr2):
        print "Ovo je dobro"
    else:
        print "no good, no good"

except RuntimeError:
        print "no good, no good, no good"