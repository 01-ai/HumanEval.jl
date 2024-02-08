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
    fibs = [0, 1]
    i = 2
    while true
        fib = fibs[i-1] + fibs[i]
        fibs = [fibs; fib]
        if isprime(fib)
            n -= 1
            if n == 0
                return fib
            end
        end
        i += 1
    end
end

function isprime(n::Int)::Bool
    if n <= 1
        return false
    end
    if n <= 3
        return true
    end
    if n % 2 == 0 || n % 3 == 0
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

