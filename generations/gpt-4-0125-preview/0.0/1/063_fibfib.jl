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
    if n == 0
        return 0
    elseif n == 1
        return 0
    elseif n == 2
        return 1
    end

    # Initialize an array to store computed values
    dp = zeros(Int, n+1)
    dp[1] = 0
    dp[2] = 0
    dp[3] = 1

    # Fill the dp array with computed fibfib values
    for i in 4:n+1
        dp[i] = dp[i-1] + dp[i-2] + dp[i-3]
    end

    return dp[n+1]
end
