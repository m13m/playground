def recursive_binary_search(list, target):
    if len(list) == 0:
        return False
    else:
        midpoint = (len(list)) // 2

        if list[midpoint] == target:
            return True
        else:
            if list[midpoint] < target:
                return recursive_binary_search(list[midpoint+1:], target)
            else:
                list[midpoint] > target
                return recursive_binary_search(list[:midpoint], target)


print(recursive_binary_search([1,2,3], 3))
print(recursive_binary_search([1,2,3], 4))