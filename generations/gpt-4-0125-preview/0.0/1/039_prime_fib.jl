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
    end
    for i in 2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

function fib(n::Int)::Int
    if n <= 1
        return n
    else
        return fib(n-1) + fib(n-2)
    end
end

function prime_fib(n::Int)::Int
    count = 0
    i = 1
    while true
        fib_num = fib(i)
        if is_prime(fib_num)
            count += 1
            if count == n
                return fib_num
            end
        end
        i += 1
    end
end
function is_prime(n::Int)::Bool
    if n <= 1
        return false
    end
    for i in 2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

function prime_fib(n::Int)::Int
    fib1, fib2 = 1, 1
    count = 0
    while true
        if fib1 > 1 && is_prime(fib1)
            count += 1
            if count == n
                return fib1
            end
        end
        fib1, fib2 = fib2, fib1 + fib2
    end
end
