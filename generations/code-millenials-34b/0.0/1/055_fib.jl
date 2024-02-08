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
        return 0
    elseif n == 1
        return 1
    else
        a, b = 0, 1
        for _ in 2:n
            a, b = b, a + b
        end
        return b
    end
end

# Test cases
println(fib(10))  # Expected output: 55
println(fib(1))   # Expected output: 1
println(fib(8))   # Expected output: 21
println(fib(0))   # Expected output: 0
println(fib(20))  # Expected output: 6765
