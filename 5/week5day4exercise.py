def luckynumber(arr):
    luckynumberlst = [-1]
    for i in arr:
        count = arr.count(i)
        if count == i:
            luckynumberlst.append(i)

    return max(luckynumberlst)

print(luckynumber([1,2,2,3,3,3]))




        
