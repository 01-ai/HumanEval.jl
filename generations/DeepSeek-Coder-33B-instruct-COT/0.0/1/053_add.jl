"""
    add(x::Int, y::Int)

Add two numbers `x` and `y`.

# Examples

```jldoctest
julia> add(2, 3)
5

julia> add(5, 7)
12
```
"""
function add(x::Int, y::Int)
    return x + y
end
println(add(2, 3))  # Output: 5
println(add(5, 7))  # Output: 12
