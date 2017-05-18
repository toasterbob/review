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

####################################################
#Hash

# Initialize 3 variables here as explained in the problem statement
empty_hash = Hash.new
default_hash = Hash.new(1)

#default_hash = Hash.new
#default_hash.default = 1

hackerrank = {"simmy" => 100, "vivmbbs" => 200}

def iter_hash(hash)
    hash.each do |key, value|
        puts key
        puts value
    end
end

#For destructive selection and deletion, we can use keep_if and delete_if as seen in Array-Selection
#For non-destructive selection or rejection, we can use select, reject, and drop_while similar to Array-

# Enter your code here.
hackerrank.store(543121, 100) #A key-value pair [543121, 100] to the hackerrank object using store

hackerrank.keep_if{ |key, value| key.is_a?(Integer)} #Retain all key-value pairs where keys are Integers

hackerrank.delete_if{ |key, value| key % 2 == 0 } #Delete all key-value pairs where keys are even-valued.
