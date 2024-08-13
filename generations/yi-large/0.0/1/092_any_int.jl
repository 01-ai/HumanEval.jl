"""
    any_int(x::Number, y::Number, z::Number)::Bool

Create a function that takes 3 numbers. Returns `true` if one of the numbers is
equal to the sum of the other two, and all numbers are integers. Returns `false`
in any other cases.

# Examples

```jldoctest
julia> any_int(5, 2, 7)
true

julia> any_int(3, 2, 2)
false

julia> any_int(3, -2, 1)
true

julia> any_int(3.6, -2.2, 2)
false
```
"""
function any_int(x::Number, y::Number, z::Number)::Bool
    # Check if all numbers are integers
    if !(x isa Integer && y isa Integer && z isa Integer)
        return false
    end
    
    # Check if one of the numbers is equal to the sum of the other two
    return x + y == z || x + z == y || y + z == x
end

# Examples
# julia> any_int(5, 2, 7)
# true
# julia> any_int(3, 2, 2)
# false
# julia> any_int(3, -2, 1)
# true
# julia> any_int(3.6, -2.2, 2)
# false
