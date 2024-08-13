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
function is_prime(x::Int)
    if x <= 1
        return false
    elseif x <= 3
        return true
    elseif x % 2 == 0 || x % 3 == 0
        return false
    end
    i = 5
    while i * i <= x
        if x % i == 0 || x % (i + 2) == 0
            return false
        end
        i += 6
    end
    return true
end
function prime_fib(n::Int)::Int
    count = 0
    a, b = 0, 1
    while true
        # Generate the next Fibonacci number
        a, b = b, a + b
        # Check if the Fibonacci number is prime
        if is_prime(b)
            count += 1
            if count == n
                return b
            end
        end
    end
end
