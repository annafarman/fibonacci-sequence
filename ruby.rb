
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

    # while (next_fib = arr[-1] + arr[-2]) <= n+1
    #   arr << next_fib
    # end
    return arr
end


def fibonacci_recursion(n)
    return [0] if n == 0
    return [0, 1] if n == 1
    arr = fibonacci_recursion(n-1)
    # p arr
    arr << arr[-2] + arr[-1]
end



puts fibonacci(5)
puts fibonacci(7)
puts fibonacci(8)
puts fibonacci(10)

p fibonacci_array(0)
p fibonacci_array(5)
p fibonacci_array(7)
p fibonacci_array(8)
p fibonacci_array(10)

p fibonacci_recursion(0)
p fibonacci_recursion(5)
p fibonacci_recursion(7)
p fibonacci_recursion(8)
p fibonacci_recursion(10)