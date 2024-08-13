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
    if n <= 0
        throw(DomainError(n, "n must be a positive integer"))
    end

    # Initialize the first two Fibonacci numbers
    fib1 = 1
    fib2 = 1

    # Initialize the count of prime Fibonacci numbers found
    prime_fib_count = 0

    while prime_fib_count < n
        # Generate the next Fibonacci number
        fib_next = fib1 + fib2
        fib1 = fib2
        fib2 = fib_next

        # Check if the Fibonacci number is prime
        if isprime(fib_next)
            prime_fib_count += 1
        end
    end

    return fib2
end

# Define a helper function to check if a number is prime
function isprime(n::Int)::Bool
    if n <= 1
        return false
    end
    if n <= 3
        return true
    end
    if n % 2 == 0 || n % 3 == 0
        return false
    end
    for i in 5:6:sqrt(n)
        if n % i == 0 || n % (i + 2) == 0
            return false
        end
    end
    return true
end

# Example usage
for i in 1:5
    println(prime_fib(i))
end
