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
    n == 0 && return 0
    n == 1 && return 1
    fib(n - 1) + fib(n - 2)
end
