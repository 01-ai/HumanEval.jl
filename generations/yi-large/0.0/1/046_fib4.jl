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

    # Initialize the first four terms of the sequence
    a, b, c, d = 0, 0, 2, 0
    for _ in 3:(n-1)
        e = a + b + c + d
        a, b, c, d = b, c, d, e
    end
    return d
end

# Test the function
for n in [5, 6, 7]
    println("fib4($n) = ", fib4(n))
end
