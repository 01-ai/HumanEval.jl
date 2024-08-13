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

# Helper function to check if a number is prime
function is_prime(n::Int)::Bool
    if n <= 1
        return false
    elseif n <= 3
        return true
    elseif n % 2 == 0 || n % 3 == 0
        return false
    end
    i = 5
    while i * i <= n
        if n % i == 0 || n % (i + 2) == 0
            return false
        end
        i += 6
    end
    return true
end

# Function to return the n-th prime Fibonacci number
function prime_fib(n::Int)::Int
    a, b = 1, 1
    count = 0
    while true
        a, b = b, a + b
        if is_prime(a)
            count += 1
            if count == n
                return a
            end
        end
    end
end

# Test cases
println(prime_fib(1))  # Output: 2
println(prime_fib(2))  # Output: 3
println(prime_fib(3))  # Output: 5
println(prime_fib(4))  # Output: 13
println(prime_fib(5))  # Output: 89
