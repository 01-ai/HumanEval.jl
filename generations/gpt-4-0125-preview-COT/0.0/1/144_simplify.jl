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
    # Step 1: Parse the Input Strings
    x_num, x_den = parse.(Int, split(x, "/"))
    n_num, n_den = parse.(Int, split(n, "/"))
    
    # Step 2: Calculate the Product
    product_num = x_num * n_num
    product_den = x_den * n_den
    
    # Step 3: Simplify the Product
    gcd_val = gcd(product_num, product_den)
    simplified_num = div(product_num, gcd_val)
    simplified_den = div(product_den, gcd_val)
    
    # Step 4 & 5: Check for Whole Number and Return the Result
    return simplified_den == 1
end
