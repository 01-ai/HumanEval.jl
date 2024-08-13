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
    # Split the fractions into numerators and denominators
    x_parts = split(x, '/')
    n_parts = split(n, '/')

    # Convert the parts to integers
    x_numerator, x_denominator = parse(Int, x_parts[1]), parse(Int, x_parts[2])
    n_numerator, n_denominator = parse(Int, n_parts[1]), parse(Int, n_parts[2])

    # Multiply the fractions
    result_numerator = x_numerator * n_numerator
    result_denominator = x_denominator * n_denominator

    # Check if the result is a whole number
    return result_numerator % result_denominator == 0
end

# Test the function
println(simplify("1/5", "5/1"))  # true
println(simplify("1/6", "2/1"))  # false
println(simplify("7/10", "10/2")) # false
