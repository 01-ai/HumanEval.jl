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
        prev, curr = 1, 1
        for i in 3:n
            prev, curr = curr, prev + curr
        end
        return curr
    end
end

# Examples
println(fib(10)) # Should print 55
println(fib(1))  # Should print 1
println(fib(8))  # Should print 21
