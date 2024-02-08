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
    elseif n == 0
        return 0
    elseif n == 1
        return 0
    elseif n == 2
        return 1
    end

    fibfib_n_minus_1 = 1
    fibfib_n_minus_2 = 0
    fibfib_n_minus_3 = 0
    fibfib_n = 0

    for i in 3:n
        fibfib_n = fibfib_n_minus_1 + fibfib_n_minus_2 + fibfib_n_minus_3
        fibfib_n_minus_3 = fibfib_n_minus_2
        fibfib_n_minus_2 = fibfib_n_minus_1
        fibfib_n_minus_1 = fibfib_n
    end

    return fibfib_n
end
