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
    # Check if n is a valid input
    if n < 1
        throw(DomainError(n, "Input must be a positive integer"))
    end

    # Initialize the Fibonacci sequence
    fib = [0, 1]

    # Generate Fibonacci numbers until we find the n-th prime Fibonacci number
    while true
        # Calculate the next Fibonacci number
        next_fib = fib[end-1] + fib[end]

        # Check if it's prime
        if isprime(next_fib)
            # If it's prime, add it to the sequence
            push!(fib, next_fib)

            # If we've found the n-th prime Fibonacci number, return it
            if length(fib) == n + 1
                return fib[end]
            end
        end
    end
end
