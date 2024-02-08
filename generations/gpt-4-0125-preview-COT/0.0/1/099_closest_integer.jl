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
    # Step 1: Parse the input
    num = parse(Float64, value)
    
    # Step 2: Identify the closest integers
    floor_val = floor(num)
    ceil_val = ceil(num)
    
    # Step 3: Calculate distances
    dist_to_floor = num - floor_val
    dist_to_ceil = ceil_val - num
    
    # Step 4 & 5: Determine equidistance and apply rounding logic
    if dist_to_floor == dist_to_ceil
        # Step 4 & 5: If equidistant, round away from zero
        return num > 0 ? ceil_val : floor_val
    else
        # Step 5: If not equidistant, round to the nearest integer
        return round(Int, num)
    end
end
