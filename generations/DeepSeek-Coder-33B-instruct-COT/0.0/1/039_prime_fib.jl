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
function is_prime(n)
    if n == 1
        return false
    end
    for i in 2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

function fib(n)
    a, b = 0, 1
    for i in 1:n
        a, b = b, a + b
    end
    return a
end

function prime_fib(n)
    count = 0
    i = 1
    while count < n
        f = fib(i)
        if is_prime(f)
            count += 1
        end
        i += 1
    end
    return fib(i-1)
end
