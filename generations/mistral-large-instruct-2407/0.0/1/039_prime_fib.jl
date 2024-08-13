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
        if num <= 1
            return false
        end
        if num <= 3
            return true
        end
        if num % 2 == 0 || num % 3 == 0
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

    function fibonacci_sequence()
        a, b = 0, 1
        while true
            produce(a)
            a, b = b, a + b
        end
    end

    count = 0
    for fib in fibonacci_sequence()
        if is_prime(fib)
            count += 1
            if count == n
                return fib
            end
        end
    end
end

# Example usage
println(prime_fib(1))  # Output: 2
println(prime_fib(2))  # Output: 3
println(prime_fib(3))  # Output: 5
println(prime_fib(4))  # Output: 13
println(prime_fib(5))  # Output: 89