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
    if n <= 3
        return [0, 0, 2, 0][n+1]
    end

    fib = zeros(Int, n+1)
    fib[1:4] = [0, 0, 2, 0]

    for i in 5:n+1
        fib[i] = fib[i-1] + fib[i-2] + fib[i-3] + fib[i-4]
    end

    return fib[n+1]
end
