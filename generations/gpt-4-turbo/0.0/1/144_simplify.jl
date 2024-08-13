"""
    simplify(x::String, n::String)::Bool

Your task is to implement a function that will simplify the expression x * n.
The function returns True if x * n evaluates to a whole number and False
otherwise. Both x and n, are string representation of a fraction, and have the
following format, <numerator>/<denominator> where both numerator and denominator
are positive whole numbers.

You can assume that x, and n are valid fractions, and do not have zero as
denominator.

# Examples

```jldoctest
julia> simplify("1/5", "5/1")
true

julia> simplify("1/6", "2/1")
false

julia> simplify("7/10", "10/2")
false
```
"""
function simplify(x::String, n::String)::Bool
    # Parse the fractions from the string format
    num_x, den_x = parse.(Int, split(x, "/"))
    num_n, den_n = parse.(Int, split(n, "/"))
    
    # Calculate the product of the two fractions
    num_product = num_x * num_n
    den_product = den_x * den_n
    
    # Check if the product is a whole number
    return num_product % den_product == 0
end
