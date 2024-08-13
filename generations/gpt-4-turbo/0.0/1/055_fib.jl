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
    if n <= 0
        throw(ArgumentError("Input must be a positive integer"))
    elseif n == 1 || n == 2
        return 1
    else
        a, b = 1, 1
        for i in 3:n
            a, b = b, a + b
        end
        return b
    end
end