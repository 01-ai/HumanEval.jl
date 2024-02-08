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



#= [SOURCE]
function add(x::Int, y::Int)
    return x + y
end
=# [/SOURCE]

#= [TESTS]
@test add(2, 3) == 5
@test add(5, 7) == 12
=# [/TESTS]

