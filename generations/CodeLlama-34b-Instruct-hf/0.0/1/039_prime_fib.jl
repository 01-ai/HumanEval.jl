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
    # Initialize the Fibonacci sequence with the first two prime numbers
    fib = [2, 3]

    # Loop until we find the n-th prime Fibonacci number
    for i in 3:n
        # Calculate the next Fibonacci number
        fib[i] = fib[i-1] + fib[i-2]

        # Check if the number is prime
        if isprime(fib[i])
            return fib[i]
        end
    end

    # If we reach this point, we didn't find any prime Fibonacci numbers
    return -1
end
