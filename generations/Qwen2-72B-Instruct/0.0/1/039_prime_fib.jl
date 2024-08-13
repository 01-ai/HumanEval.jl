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
    function isprime(x::Int)
        if x <= 1
            return false
        end
        for i in 2:(sqrt(x))
            if x % i == 0
                return false
            end
        end
        return true
    end

    function fib(n::Int)
        a, b = 0, 1
        for _ in 1:n-1
            a, b = b, a + b
        end
        return b
    end

    count, i = 0, 1
    while true
        fib_i = fib(i)
        if isprime(fib_i)
            count += 1
            if count == n
                return fib_i
            end
        end
        i += 1
    end
end
function prime_fib(n::Int)::Int
    function isprime(x::Int)
        if x <= 3
            return x > 1
        end
        if x % 2 == 0 || x % 3 == 0
            return false
        end
        i = 5
        while i * i <= x
            if x % i == 0 || x % (i + 2) == 0
                return false
            end
            i += 6
        end
        return true
    end

    function fib(n::Int)
        a, b = 0, 1
        for _ in 1:n-1
            a, b = b, a + b
        end
        return b
    end

    count, i = 0, 1
    while true
        fib_i = fib(i)
        if isprime(fib_i)
            count += 1
            if count == n
                return fib_i
            end
        end
        i += 1
    end
end
