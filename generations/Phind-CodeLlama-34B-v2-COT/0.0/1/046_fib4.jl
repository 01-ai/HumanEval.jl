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
    fib4_values = [0, 0, 2, 0]
    if n <= 3
        return fib4_values[n + 1]
    end
    result = 0
    for i in 4:n
        result = fib4_values[1] + fib4_values[2] + fib4_values[3] + fib4_values[4]
        fib4_values = [fib4_values[2], fib4_values[3], fib4_values[4], result]
    end
    return result
end
