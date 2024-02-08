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
    # Convert the input strings to numerator and denominator
    x_num, x_den = parse(Int, split(x, "/")[1])
    n_num, n_den = parse(Int, split(n, "/")[1])

    # Check if the product of the numerators and denominators is a whole number
    whole_number = (x_num * n_num) % (x_den * n_den) == 0

    # If the product is a whole number, return true; otherwise, return false
    return whole_number
end
