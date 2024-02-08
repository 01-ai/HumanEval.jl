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
    # and all numbers are integers.
    # If any of the numbers is not an integer, return false.
    # If all numbers are integers and one of them is equal to the sum of the other two,
    # return true.
    # If none of the numbers is equal to the sum of the other two, return false.
    # Note: You can assume that the numbers are not all equal to zero.
    
    # Your code here
    
    return true # Replace this with your actual implementation
end
