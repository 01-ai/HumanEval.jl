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
        throw(DomainError(n, "n must be a non-negative integer"))
    elseif n == 0 || n == 1
        return 0
    elseif n == 2
        return 1
    else
        fibfib_values = [0, 0, 1]
        for i in 3:n
            push_value = fibfib_values[1] + fibfib_values[2] + fibfib_values[3]
            push_value == fibfib_values[1] ? popfirst(fibfib_values) : popfirst(fibfib_values)
            push_value == fibfib_values[2] ? popfirst(fibfib_values) : popfirst(fibfib_values)
            push_value == fibfib_values[3] ? popfirst(fibfib_values) : popfirst(fibfib_values)
            pushfirst(fibfib_values, push_value)
        end
        return fibfib_values[1]
    end
end
