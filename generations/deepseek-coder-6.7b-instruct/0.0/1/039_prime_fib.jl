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
    function is_prime(x::Int)::Bool
        if x == 2 || x == 3
            return true
        elseif x < 2 || x % 2 == 0
            return false
        end
        for i in 3:2:isqrt(x)
            if x % i == 0
                return false
            end
        end
        return true
    end

    function fib(n::Int)::Int
        a, b = 0, 1
        for _ in 1:n
            a, b = b, a + b
        end
        return b
    end

    i = 1
    count = 0
    while count < n
        f = fib(i)
        if is_prime(f)
            count += 1
        end
        i += 1
    end
    return fib(i - 1)
end
