arr1 = [1 ,3 ,5]
arr2 = [2 ,4 ,6]

def funkcija(arr1, arr2, i = 0):
    if i < min(len(arr1), len(arr2)):
        return [arr1[i] + arr2[i]] + funkcija(arr1, arr2, i + 1)
    else:
        return []

print funkcija(arr1, arr2)
