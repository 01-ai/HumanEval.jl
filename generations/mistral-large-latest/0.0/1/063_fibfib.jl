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
    # Initialize the first three elements of the sequence
    fibfib = [0, 0, 1]

    # Compute the n-th element iteratively
    for i in 4:n
        fibfib[i % 3 + 1] = sum(fibfib)
    end

    # Return the n-th element
    return fibfib[n % 3 + 1]
end
