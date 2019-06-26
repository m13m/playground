def selection_sort(arr):
    length = len(arr)

    for i in range(length):
        min_index = i
        for j in range(i+1, length):
            if arr[j] < arr[min_index]:
                min_index = j
        arr[i], arr[min_index] = arr[min_index], arr[i]
    return arr

if __name__ == '__main__':
    sort_arry = selection_sort([54,26,93,17,77,31,44,55,20])
    print(sort_arry)              
    sort_arry = selection_sort([31,44,55,20,54,26,93,17,77])
    print(sort_arry)