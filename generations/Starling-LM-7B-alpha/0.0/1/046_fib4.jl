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
    if n == 0 || n == 1
        return 0
    elseif n == 2
        return 2
    end

    a = zeros(Int, 4)
    a[1] = 0
    a[2] = 0
    a[3] = 2
    a[4] = 0

    for i in 5:n
        a[i] = a[i-1] + a[i-2] + a[i-3] + a[i-4]
    end

    return a[n]
end
