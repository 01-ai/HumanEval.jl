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
function prime_fib(n::Int)::Int
    # Initialize variables
    a, b = 1, 1
    count = 0

    while count < n
        # Generate the next Fibonacci number
        c = a + b
        a, b = b, c

        # Check if the current Fibonacci number is prime
        if is_prime(c)
            count += 1
            if count == n
                return c
            end
        end
    end
end

# Helper function to check if a number is prime
function is_prime(num::Int)::Bool
    if num < 2
        return false
    end
    for i in 2:isqrt(num)
        if num % i == 0
            return false
        end
    end
    return true
end
