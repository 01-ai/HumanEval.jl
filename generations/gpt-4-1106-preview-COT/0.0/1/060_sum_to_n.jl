"""
    sum_to_n(n::Int)::Int

`sum_to_n` is a function that sums numbers from `1` to `n`.

# Examples

```jldoctest
julia> sum_to_n(30)
465

julia> sum_to_n(100)
5050

julia> sum_to_n(5)
15

julia> sum_to_n(10)
55

julia> sum_to_n(1)
1
```
"""
function sum_to_n(n::Int)::Int
    # Step 2: Check if n is less than 1
    if n < 1
        return 0
    end

    # Step 3: Use the arithmetic series sum formula
    return n * (n + 1) ÷ 2  # Using integer division operator ÷ for an integer result
end
println(sum_to_n(30))  # Should print 465
println(sum_to_n(100)) # Should print 5050
println(sum_to_n(5))   # Should print 15
println(sum_to_n(10))  # Should print 55
println(sum_to_n(1))   # Should print 1
