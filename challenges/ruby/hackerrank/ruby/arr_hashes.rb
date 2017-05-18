def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    arr.push(element)
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    arr.unshift(element)
end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    arr.insert(index, "mark", "noizumi")
end

def end_arr_delete(arr)
    # delete the element from the end of the array and return the deleted element
    arr.pop
end

def start_arr_delete(arr)
    # delete the element at the beginning of the array and return the deleted element
    arr.shift
end

def delete_at_arr(arr, index)
    # delete the element at the position #index
    arr.delete_at(index)
end

def delete_all(arr, val)
    # delete all the elements of the array where element = val
    arr.delete(val)
end

def select_arr(arr)
  # select and return all odd numbers from the Array variable `arr`
    arr.select{ |el| el % 2 == 1}
end

def reject_arr(arr)
  # reject all elements which are divisible by 3
    arr.reject{ |el| el % 3 == 0}
end

def delete_arr(arr)
  # delete all negative elements
    arr.delete_if{ |el| el < 0}
end

def keep_arr(arr)
  # keep all non negative elements ( >= 0)
    arr.keep_if{ |el| el >= 0}
end
