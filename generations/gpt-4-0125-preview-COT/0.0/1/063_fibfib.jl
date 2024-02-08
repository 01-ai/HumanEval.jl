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
    # Base cases directly defined
    if n == 0 || n == 1
        return 0
    elseif n == 2
        return 1
    end

    # Memoization setup
    memo = Dict(0 => 0, 1 => 0, 2 => 1)

    # Recursive function with memoization
    function fibfib_memo(n::Int, memo::Dict{Int,Int})::Int
        if haskey(memo, n)
            return memo[n]
        else
            memo[n] = fibfib_memo(n-1, memo) + fibfib_memo(n-2, memo) + fibfib_memo(n-3, memo)
            return memo[n]
        end
    end

    # Compute and return the result
    return fibfib_memo(n, memo)
end

# Examples to test the function
println(fibfib(1))  # Expected output: 0
println(fibfib(5))  # Expected output: 4
println(fibfib(8))  # Expected output: 24
