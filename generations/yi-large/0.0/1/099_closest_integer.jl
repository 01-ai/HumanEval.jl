"""
    closest_integer(value::String)::Int

Create a function that takes a value (string) representing a number and returns
the closest integer to it. If the number is equidistant from two integers, round
it away from zero.

!!! note

    Rounding away from zero means that if the given number is equidistant
    from two integers, the one you should return is the one that is the
    farthest from zero. For example closest_integer("14.5") should
    return 15 and closest_integer("-14.5") should return -15.

# Examples

```jldoctest
julia> closest_integer("10")
10

julia> closest_integer("15.3")
15
```
"""
function closest_integer(value::String)::Int
    # Convert the string to a float
    num = parse(Float64, value)
    
    # Get the integer part and the decimal part
    integer_part, decimal_part = floor(num), num - floor(num)
    
    # Check if the decimal part is exactly 0.5
    if decimal_part == 0.5
        # If the integer part is even, add 1 to round away from zero
        # If the integer part is odd, do nothing to round away from zero
        if iseven(integer_part)
            return integer_part + 1
        else
            return integer_part
        end
    else
        # If the decimal part is not 0.5, round to the nearest integer
        return round(Int, num)
    end
end

# Test the function
println(closest_integer("10")) # Expected: 10
println(closest_integer("15.3")) # Expected: 15
