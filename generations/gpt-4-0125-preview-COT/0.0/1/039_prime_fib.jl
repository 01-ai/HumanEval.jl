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

# Function to check if a number is prime
function is_prime(n::Int)::Bool
    if n <= 1
        return false
    end
    for i in 2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

# Function to generate the n-th Fibonacci number
function fib(n::Int)::Int
    a, b = 0, 1
    for _ in 1:n
        a, b = b, a + b
    end
    return a
end

# Main function to find the n-th prime Fibonacci number
function prime_fib(n::Int)::Int
    count = 0
    fib_index = 1
    while true
        fib_num = fib(fib_index)
        if is_prime(fib_num)
            count += 1
            if count == n
                return fib_num
            end
        end
        fib_index += 1
    end
end
