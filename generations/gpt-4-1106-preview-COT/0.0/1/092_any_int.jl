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
    # Step 2: Check if all numbers are integers
    if isinteger(x) && isinteger(y) && isinteger(z)
        # Step 3: Check if any number is equal to the sum of the other two
        return (x == y + z) || (y == x + z) || (z == x + y)
    else
        # If not all numbers are integers, return false
        return false
    end
end

# Examples
println(any_int(5, 2, 7))   # true
println(any_int(3, 2, 2))   # false
println(any_int(3, -2, 1))  # true
println(any_int(3.6, -2.2, 2))  # false