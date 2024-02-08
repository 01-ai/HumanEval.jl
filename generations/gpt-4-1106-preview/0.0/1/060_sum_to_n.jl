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

"""
    sum_to_n(n::Int)::Int

`sum_to_n` is a function that sums numbers from `1` to `n`.
"""
function sum_to_n(n::Int)::Int
    return n * (n + 1) // 2
end

# Examples
println(sum_to_n(30))  # Output: 465
println(sum_to_n(100)) # Output: 5050
println(sum_to_n(5))   # Output: 15
println(sum_to_n(10))  # Output: 55
println(sum_to_n(1))   # Output: 1
