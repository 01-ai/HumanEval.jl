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
    function is_prime(n::Int)
        n < 2 && return false
        n == 2 && return true
        for k = 2:ceil(Int, sqrt(n))
            if n % k == 0
                return false
            end
        end
        return true
    end

    f′, f″, f = 1, 1, 2
    while true
        if is_prime(f)
            n -= 1
        end
        if n == 0
            return f
        end
        f′, f″, f = f″, f, f″ + f
    end
end
