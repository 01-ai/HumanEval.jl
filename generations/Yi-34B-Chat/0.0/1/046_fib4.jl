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
    # Initialize the first four elements of the sequence
    a, b, c, d = 0, 0, 2, 0

    # Loop through the sequence until the n-th element is reached
    for _ in 1:n-3
        # Calculate the next element using the current four elements
        d = a + b + c + d
        # Shift the elements to the left
        a, b, c, d = b, c, d, a
    end

    # Return the n-th element
    return d
end
