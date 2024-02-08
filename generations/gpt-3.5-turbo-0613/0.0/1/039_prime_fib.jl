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
    function is_prime(num::Int)::Bool
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
    
    function is_fib(num::Int)::Bool
        a, b = 0, 1
        while b < num
            a, b = b, a + b
        end
        return b == num
    end
    
    count = 0
    num = 2
    while count < n
        if is_fib(num) && is_prime(num)
            count += 1
        end
        num += 1
    end
    
    return num - 1
end
