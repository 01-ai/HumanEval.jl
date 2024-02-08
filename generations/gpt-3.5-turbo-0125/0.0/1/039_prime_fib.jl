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
function is_prime(n::Int)
    if n <= 1
        return false
    end
    for i in 2:isqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

function prime_fib(n::Int)::Int
    function is_fibonacci(num)
        phi = (1 + sqrt(5)) / 2
        a = round(Int, phi * num)
        return a * (a - 1) == num * (num - 1)
    end

    count = 0
    num = 1
    while count < n
        if is_fibonacci(num) && is_prime(num)
            count += 1
        end
        num += 1
    end
    return num - 1
end
