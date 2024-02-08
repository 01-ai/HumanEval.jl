"""
    prime_fib(n::Int)::Int

Returns n-th number that is a Fibonacci number and it's also prime.

```jldoctest
julia> prime_fib(1)
2

julia> prime_fib(2)
3

julia> prime_fib(3)
5

julia> prime_fib(4)
13

julia> prime_fib(5)
89
```
"""

# Step 1: Define a helper function to check if a number is prime
function is_prime(num::Int)::Bool
    if num <= 1
        return false
    end
    for i in 2:sqrt(num)
        if num % i == 0
            return false
        end
    end
    return true
end

# Step 2: Define a function to generate Fibonacci numbers
function fib_generator()
    a, b = 0, 1
    while true
        a, b = b, a + b
        yield(a)
    end
end

# Step 3: Define the main function to find the n-th prime Fibonacci number
function prime_fib(n::Int)::Int
    count = 0
    for fib in fib_generator()
        if is_prime(fib)
            count += 1
            if count == n
                return fib
            end
        end
    end
end

# Example usage:
println(prime_fib(1)) # Should print 2
println(prime_fib(2)) # Should print 3
println(prime_fib(3)) # Should print 5
println(prime_fib(4)) # Should print 13
println(prime_fib(5)) # Should print 89
