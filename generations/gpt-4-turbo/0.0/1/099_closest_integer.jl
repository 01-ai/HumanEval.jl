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
    # Convert the string to a floating-point number
    num = parse(Float64, value)
    
    # Get the floor and ceiling of the number
    floor_num = floor(num)
    ceil_num = ceil(num)
    
    # Check the distance to the floor and ceiling
    dist_to_floor = abs(num - floor_num)
    dist_to_ceil = abs(num - ceil_num)
    
    # Determine the closest integer
    if dist_to_floor < dist_to_ceil
        return Int(floor_num)
    elseif dist_to_ceil < dist_to_floor
        return Int(ceil_num)
    else
        # If equidistant, round away from zero
        if num > 0
            return Int(ceil_num)
        else
            return Int(floor_num)
        end
    end
end
