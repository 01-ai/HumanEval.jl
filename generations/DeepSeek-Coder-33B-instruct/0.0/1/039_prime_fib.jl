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

function prime_fib(n::Int)::Int
    if n <= 0
        throw(DomainError(n, "argument must be a positive integer"))
    end
    count = 0
    a, b = 0, 1
    while count < n
        c = a + b
        a = b
        b = c
        if is_prime(c)
            count += 1
        end
    end
    return b
end
