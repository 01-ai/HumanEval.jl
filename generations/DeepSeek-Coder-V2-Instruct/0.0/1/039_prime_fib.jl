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
function is_prime(num::Int)::Bool
    if num <= 1
        return false
    elseif num <= 3
        return true
    elseif num % 2 == 0 || num % 3 == 0
        return false
    end
    i = 5
    while i * i <= num
        if num % i == 0 || num % (i + 2) == 0
            return false
        end
        i += 6
    end
    return true
end

function prime_fib(n::Int)::Int
    if n <= 0
        throw(ArgumentError("n must be a positive integer"))
    end
    
    a, b = 0, 1
    count = 0
    
    while true
        if is_prime(b)
            count += 1
            if count == n
                return b
            end
        end
        a, b = b, a + b
    end
end
