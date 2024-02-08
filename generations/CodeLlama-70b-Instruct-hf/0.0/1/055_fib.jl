"""
    fib(n::Int)::Int

Return n-th Fibonacci number.

# Examples

```jldoctest
julia> fib(10)
55

julia> fib(1)
1

julia> fib(8)
21
```
"""
function fib(n::Int)::Int
    # Base cases
    if n == 0
        return 0
    elseif n == 1
        return 1
    end

    # Initialize variables
    a = 0
    b = 1

    # Iterate n times to calculate the n-th Fibonacci number
    for _ in 2:n
        c = a + b
        a = b
        b = c
    end

    return b
end
