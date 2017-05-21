def prime?(n)
    return false if n < 2
    return true if n == 2
    2.upto(n - 1) do |i|
        return false if n % i == 0
    end
    true
end

# Your code here
def take(arr, n = 1)
   arr[n..-1]
end

def take(arr, n = 1)
    arr.drop(n)
end

##########################
def foo(str: "foo", num: 424242, **options)
  [str, num, options]
end

foo #=> ['foo', 424242, {}]
foo(check: true) # => ['foo', 424242, {check: true}]
#################################################
