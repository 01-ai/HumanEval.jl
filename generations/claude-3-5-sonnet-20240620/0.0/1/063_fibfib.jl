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
    if n <= 1
        return 0
    elseif n == 2
        return 1
    end

    # Initialize the first three elements
    a, b, c = 0, 0, 1

    # Iterate to calculate the n-th element
    for _ in 3:n
        a, b, c = b, c, a + b + c
    end

    return c
end
