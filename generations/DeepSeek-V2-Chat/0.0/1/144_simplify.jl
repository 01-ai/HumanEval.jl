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
    # Parse the input strings to get the numerators and denominators
    num_x, den_x = split(x, "/")
    num_n, den_n = split(n, "/")
    
    # Convert the parsed strings to integers
    num_x = parse(Int, num_x)
    den_x = parse(Int, den_x)
    num_n = parse(Int, num_n)
    den_n = parse(Int, den_n)
    
    # Multiply the numerators and denominators
    result_num = num_x * num_n
    result_den = den_x * den_n
    
    # Check if the resulting fraction is a whole number
    return result_den == 1
end

# Examples
println(simplify("1/5", "5/1"))  # true
println(simplify("1/6", "2/1"))  # false
println(simplify("7/10", "10/2"))  # false
