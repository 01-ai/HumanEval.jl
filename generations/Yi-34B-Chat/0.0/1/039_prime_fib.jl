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
    # Base cases
    if n == 1
        return 2
    elseif n == 2
        return 3
    end

    # Initialize the Fibonacci sequence
    a, b = 0, 1
    for _ in 1:n-2
        # Calculate the next number in the Fibonacci sequence
        a, b = b, a + b
        # Check if the current number is prime
        if isprime(a)
            # If it's prime, return it
            return a
        end
    end

    # The last number in the Fibonacci sequence is the n-th number
    return a
end
