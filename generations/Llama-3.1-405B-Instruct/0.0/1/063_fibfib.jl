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
    # Base cases
    if n == 0 || n == 1
        return 0
    elseif n == 2
        return 1
    end

    # Initialize memoization array
    memo = zeros(Int, n + 1)
    memo[2] = 1

    # Compute fibfib numbers iteratively
    for i in 3:n
        memo[i] = memo[i-1] + memo[i-2] + memo[i-3]
    end

    # Return the n-th fibfib number
    return memo[n]
end
