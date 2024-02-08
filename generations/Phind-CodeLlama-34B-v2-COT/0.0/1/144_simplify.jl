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
    # Split the strings by "/" and convert the parts to integers
    x_num, x_den = parse(Int, split(x, "/")[1]), parse(Int, split(x, "/")[2])
    n_num, n_den = parse(Int, split(n, "/")[1]), parse(Int, split(n, "/")[2])

    # Multiply the numerators and denominators together
    new_num = x_num * n_num
    new_den = x_den * n_den

    # Check if the new denominator is equal to 1
    return new_den == 1
end
