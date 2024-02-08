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
        throw(ArgumentError("n must be a positive integer"))
    elseif n == 1 || n == 2
        return 1
    else
        fib_n_minus_1 = 1
        fib_n_minus_2 = 1
        fib_n = 0
        for i in 3:n
            fib_n = fib_n_minus_1 + fib_n_minus_2
            fib_n_minus_2 = fib_n_minus_1
            fib_n_minus_1 = fib_n
        end
        return fib_n
    end
end
