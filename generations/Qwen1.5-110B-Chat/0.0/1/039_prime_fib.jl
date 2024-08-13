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
    n <= 1 && return false
    n <= 3 && return true
    n % 2 == 0 && return false
    for i in 3:isqrt(n), step=2
        n % i == 0 && return false
    end
    return true
end

function fib()
    a, b = 0, 1
    while true
        yield(b)
        a, b = b, a + b
    end
end

function prime_fib(n::Int)::Int
    prime_fib_count = 0
    fib_gen = fib()
    while prime_fib_count < n
        fib_num = next(fib_gen)[1]
        if isprime(fib_num)
            prime_fib_count += 1
        end
    end
    return fib_num
end

# Test cases
println(prime_fib(1))  # 2
println(prime_fib(2))  # 3
println(prime_fib(3))  # 5
println(prime_fib(4))  # 13
println(prime_fib(5))  # 89
