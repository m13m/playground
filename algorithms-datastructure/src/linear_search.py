def linear_search(list, target):
    """
    Returns the index position of target if found, else returns None
    """

    for i in range(0, len(list)):
        if list[i] == target:
            return i 
    return None    



print(linear_search([1,2,3, 4], 5))
print(linear_search([1,2,3, 4], 4))