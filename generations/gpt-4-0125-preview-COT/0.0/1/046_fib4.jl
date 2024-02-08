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

    # Initialize variables for fib4(0), fib4(1), fib4(2), and fib4(3)
    a, b, c, d = 0, 0, 2, 0

    # Iteratively calculate fib4(n)
    for i in 4:n
        temp = a + b + c + d
        a, b, c = b, c, d  # Shift the last three values
        d = temp  # Update the last value with the new calculation
    end

    return d  # The last calculated value is fib4(n)
end
