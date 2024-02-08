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
    # Step 1: Parse the input string to a floating-point number
    num = parse(Float64, value)
    
    # Step 2: Check if the number is already an integer
    if isinteger(num)
        return Int(num)
    end
    
    # Step 3: Determine the fractional part of the number
    frac_part = num - floor(num)
    
    # Step 4: Round away from zero if the fractional part is exactly 0.5
    if frac_part == 0.5
        return num > 0 ? Int(ceil(num)) : Int(floor(num))
    end
    
    # Step 5 and 6: Round down or up based on the fractional part
    return frac_part < 0.5 ? Int(floor(num)) : Int(ceil(num))
end
