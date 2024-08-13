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
    if n == 0
        return 0
    elseif n == 1
        return 0
    elseif n == 2
        return 1
    else
        return fibfib(n-1) + fibfib(n-2) + fibfib(n-3)
    end
end
function fibfib(n::Int)::Int
    if n == 0
        return 0
    elseif n == 1
        return 0
    elseif n == 2
        return 1
    else
        fibfib_values = zeros(Int, n+1)
        fibfib_values[1] = 0
        fibfib_values[2] = 0
        fibfib_values[3] = 1
        for i = 4:n+1
            fibfib_values[i] = fibfib_values[i-1] + fibfib_values[i-2] + fibfib_values[i-3]
        end
        return fibfib_values[n+1]
    end
end
