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
    function is_prime(num)
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

    function fibonacci()
        a, b = 0, 1
        return Channel() do channel
            while true
                put!(channel, b)
                a, b = b, a + b
            end
        end
    end

    count = 0
    for fib in fibonacci()
        if is_prime(fib)
            count += 1
            if count == n
                return fib
            end
        end
    end
end
