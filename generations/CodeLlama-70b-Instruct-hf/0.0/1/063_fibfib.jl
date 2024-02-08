"""
fibfib(n::Int)::Int

The FibFib number sequence is a sequence similar to the Fibbonacci sequnece
that's defined as follows:

  - fibfib(0) == 0
  - fibfib(1) == 0
  - fibfib(2) == 1
  - fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3)

Please write a function to efficiently compute the n-th element of the fibfib
number sequence.

# Examples

```jldoctest
julia> fibfib(1)
0

julia> fibfib(5)
4

julia> fibfib(8)
24
```
"""
function fibfib(n::Int)::Int
    # Check for invalid input
    if n < 0
        throw(DomainError(n, "Input must be a non-negative integer"))
    end

    # Initialize the first three elements of the sequence
    a, b, c = 0, 0, 1

    # Iterate from 3 to n
    for _ in 3:n
        # Calculate the next element of the sequence
        a, b, c = b, c, a + b + c
    end

    # Return the n-th element of the sequence
    return c
end
