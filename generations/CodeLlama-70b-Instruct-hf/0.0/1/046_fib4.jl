"""
    fib4(n::Int)::Int

The `fib4` number sequence is a sequence similar to the Fibbonacci sequnece
that's defined as follows:

fib4(0) -> 0 fib4(1) -> 0 fib4(2) -> 2 fib4(3) -> 0 fib4(n) -> fib4(n-1) +
fib4(n-2) + fib4(n-3) + fib4(n-4).

Please write a function to efficiently compute the n-th element of the fib4
number sequence. Do not use recursion.

# Examples

```jldoctest
julia> fib4(5)
4

julia> fib4(6)
8

julia> fib4(7)
14
```
"""
function fib4(n::Int)::Int
    # Check for invalid input
    if n < 0
        throw(DomainError(n, "Input must be a non-negative integer"))
    end

    # Initialize the first four elements of the sequence
    fib4_sequence = [0, 0, 2, 0]

    # Calculate the n-th element of the sequence using dynamic programming
    for i = 5:n
        fib4_sequence[i] = sum(fib4_sequence[i-4:i])
    end

    # Return the n-th element of the sequence
    return fib4_sequence[n]
end
