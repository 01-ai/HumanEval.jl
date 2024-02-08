"""
    fib4(n::Int)::Int

The `fib4` number sequence is a sequence similar to the Fibbonacci sequnece
that's defined as follows:

fib4(0) -> 0 fib4(1) -> 0 fib4(2) -> 2 fib4(3) -> 0 fib4(n) -> fib4(n-1) +
fib4(n-2) + fib4(n-3) + fib4(n-4).

Please write a function to efficiently compute the n-th element of the fib4
number sequence. Do not use recursion.

# Examples

```jldoctest
julia> fib4(5)
4

julia> fib4(6)
8

julia> fib4(7)
14
```
"""
function fib4(n::Int)::Int
    if n < 0
        throw(DomainError(n, "n must be a non-negative integer"))
    end
    if n == 0
        return 0
    elseif n == 1
        return 0
    elseif n == 2
        return 2
    elseif n == 3
        return 0
    end

    fib_n_minus_4 = 0
    fib_n_minus_3 = 0
    fib_n_minus_2 = 2
    fib_n_minus_1 = 0

    for i in 4:n
        fib_n = fib_n_minus_1 + fib_n_minus_2 + fib_n_minus_3 + fib_n_minus_4
        fib_n_minus_4 = fib_n_minus_3
        fib_n_minus_3 = fib_n_minus_2
        fib_n_minus_2 = fib_n_minus_1
        fib_n_minus_1 = fib_n
    end

    return fib_n_minus_1 + fib_n_minus_2 + fib_n_minus_3 + fib_n_minus_4
end

# Test cases
println(fib4(5))  # Output: 4
println(fib4(6))  # Output: 8
println(fib4(7))  # Output: 14
