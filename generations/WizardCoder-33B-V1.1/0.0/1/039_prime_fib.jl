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
        if num <= 1
            return false
        elseif num <= 3
            return true
        elseif num % 2 == 0 || num % 3 == 0
            return false
        end
        i = 5
        while i * i <= num
            if num % i == 0 || num % (i + 2) == 0
                return false
            end
            i += 6
        end
        return true
    end

    function fib(n)
        if n <= 1
            return n
        else
            a, b = 0, 1
            for i in 2:n
                a, b = b, a + b
            end
            return b
        end
    end

    count = 0
    i = 1
    while count < n
        num = fib(i)
        if is_prime(num)
            count += 1
        end
        i += 1
    end
    return fib(i - 1)
end

# Test cases
println(prime_fib(1))  # 2
println(prime_fib(2))  # 3
println(prime_fib(3))  # 5
println(prime_fib(4))  # 13
println(prime_fib(5))  # 89
