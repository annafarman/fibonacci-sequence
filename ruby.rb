
def fibonacci(n)
    if n < 2 then return n 
    else
        fibonacci(n-1) + fibonacci(n-2)
    end
end

def fibonacci_array(n)
    arr = []
    for n in 0..n do
        arr << fibonacci(n)
    end 
    return arr
end

def fibonacci_recursion(n)
    return [0] if n == 0
    return [0, 1] if n == 1
    arr = fibonacci_recursion(n-1)
    # p arr
    arr << arr[-2] + arr[-1]
end

def factorial_recursion(n)
    if n == 1 then return n
    else
        n * factorial_recursion(n-1)
    end
end

def collatz_conjecture(n)
    step = 0
    return step if n == 0
    while n != 1
        if n.even? then 
            n = n/2
            step += 1
        else
            n = 3*n + 1
            step += 1
        end
    end 
    step
end

def merge_sort(arr)
    return arr if arr.length <= 1

    mid = arr.length/2
    left_half = merge_sort(arr.slice(0...mid)) 
    right_half = merge_sort(arr.slice(mid..arr.length))
    merge(left_half, right_half)
end

def merge(left, right)
    sorted = []
    while !left.empty? && !right.empty?
        if left.first <= right.first
            sorted << left.shift
        else
            sorted << right.shift
        end
    end
    sorted.concat(left).concat(right)
end

# puts fibonacci(5)
# puts fibonacci(7)
# puts fibonacci(8)
# puts fibonacci(10)

# p fibonacci_array(0)
# p fibonacci_array(5)
# p fibonacci_array(7)
# p fibonacci_array(8)
# p fibonacci_array(10)

# p fibonacci_recursion(0)
# p fibonacci_recursion(5)
# p fibonacci_recursion(7)
# p fibonacci_recursion(8)
# p fibonacci_recursion(10)

# puts factorial_recursion(1)
# puts factorial_recursion(2)
# puts factorial_recursion(3)
# puts factorial_recursion(4)
# puts factorial_recursion(8)

# puts collatz_conjecture(1)
# puts collatz_conjecture(2)
# puts collatz_conjecture(3)
# puts collatz_conjecture(4)
# puts collatz_conjecture(5)
# puts collatz_conjecture(6)
# puts collatz_conjecture(7)
# puts collatz_conjecture(8)
# puts collatz_conjecture(15)
# puts collatz_conjecture(27)
# puts collatz_conjecture(50)

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 110])
