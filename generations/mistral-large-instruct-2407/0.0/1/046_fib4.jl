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

"""
    fib4(n::Int)::Int

The `fib4` number sequence is a sequence similar to the Fibonacci sequence
that's defined as follows:

fib4(0) -> 0
fib4(1) -> 0
fib4(2) -> 2
fib4(3) -> 0
fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).

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
    if n == 0
        return 0
    elseif n == 1
        return 0
    elseif n == 2
        return 2
    elseif n == 3
        return 0
    end

    # Initialize the first four values of the sequence
    a, b, c, d = 0, 0, 2, 0

    # Compute the n-th value iteratively
    for i in 4:n
        next_value = a + b + c + d
        a, b, c, d = b, c, d, next_value
    end

    return d
end
