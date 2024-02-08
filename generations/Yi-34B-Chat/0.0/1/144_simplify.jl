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
    # Step 1: Convert strings to rational numbers
    x_num, x_denom = map(Int, split(x, "/"))
    n_num, n_denom = map(Int, split(n, "/"))

    # Step 2: Check if the denominators are equal
    if x_denom != n_denom
        return false
    end

    # Step 3: Calculate the product of the numerators
    product_num = x_num * n_num

    # Step 4: Check if the product is a whole number
    return product_num % x_denom == 0
end
