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
    # Check if any of the numbers is equal to the sum of the other two
    if (x == y + z) || (y == x + z) || (z == x + y)
        # Check if all numbers are integers
        if isinteger(x) && isinteger(y) && isinteger(z)
            return true
        end
    end
    return false
end
