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
    n < 0 && return throw(DomainError(n, "Fibonacci number not defined for negative integers"))
    n <= 2 ? return 1
    a, b = 1, 1
    for i in 3:n
        a, b = b, a + b
    end
    return b
end
