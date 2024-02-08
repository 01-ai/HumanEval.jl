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
    # Base cases
    if n == 0
        return 0
    elseif n == 1
        return 0
    elseif n == 2
        return 2
    elseif n == 3
        return 0
    end

    # Initialize an array to store the sequence values up to n
    fib4_values = zeros(Int, n + 1)
    fib4_values[1] = 0
    fib4_values[2] = 0
    fib4_values[3] = 2
    fib4_values[4] = 0

    # Compute the sequence values from 5 to n
    for i in 5:n+1
        fib4_values[i] = fib4_values[i-1] + fib4_values[i-2] + fib4_values[i-3] + fib4_values[i-4]
    end

    return fib4_values[n+1]
end
