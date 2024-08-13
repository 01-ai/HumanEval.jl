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
function isprime(n::Int)
    if n < 2
        return false
    elseif n < 4
        return true
    elseif n % 2 == 0
        return false
    else
        for d in 3:2:isqrt(n)
            if n % d == 0
                return false
            end
        end
        return true
    end
end

function fibonacci(n::Int)
    if n < 1
        error("Input must be positive integer")
    elseif n <= 2
        return 1
    else
        a, b = 1, 1
        for _ in 3:n
            a, b = b, a + b
        end
        return b
    end
end

function prime_fib(n::Int)
    count = 0
    i = 1
    while count < n
        fib = fibonacci(i)
        if isprime(fib)
            count += 1
        end
        i += 1
    end
    return fibonacci(i - 1)
end
