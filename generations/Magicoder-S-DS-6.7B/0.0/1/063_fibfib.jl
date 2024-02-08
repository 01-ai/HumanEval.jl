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
    if n < 0
        throw(DomainError(n, "n must be non-negative"))
    elseif n == 0 || n == 1
        return 0
    elseif n == 2
        return 1
    end

    fibfib_sequence = zeros(Int, n+1)
    fibfib_sequence[1] = 0
    fibfib_sequence[2] = 0
    fibfib_sequence[3] = 1

    for i in 4:n+1
        fibfib_sequence[i] = fibfib_sequence[i-1] + fibfib_sequence[i-2] + fibfib_sequence[i-3]
    end

    return fibfib_sequence[n+1]
end

# Test cases
println(fibfib(1)) # 0
println(fibfib(5)) # 4
println(fibfib(8)) # 24