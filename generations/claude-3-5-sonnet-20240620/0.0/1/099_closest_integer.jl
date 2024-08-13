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
    
    # Get the integer part and fractional part
    int_part = trunc(Int, num)
    frac_part = abs(num - int_part)
    
    if frac_part < 0.5
        # If fractional part is less than 0.5, return the integer part
        return int_part
    elseif frac_part > 0.5
        # If fractional part is greater than 0.5, round away from zero
        return num > 0 ? int_part + 1 : int_part - 1
    else
        # If fractional part is exactly 0.5, round away from zero
        return num >= 0 ? int_part + 1 : int_part - 1
    end
end
