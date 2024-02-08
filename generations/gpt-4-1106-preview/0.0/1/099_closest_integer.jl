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
    # Parse the string to a floating-point number
    num = parse(Float64, value)
    
    # Get the floor and ceiling of the number
    floor_num = floor(num)
    ceil_num = ceil(num)
    
    # Check if the number is equidistant from the floor and ceiling
    if num - floor_num == ceil_num - num
        # Round away from zero
        return num > 0 ? ceil_num : floor_num
    else
        # Round to the nearest integer
        return round(Int, num)
    end
end

# Examples
println(closest_integer("10"))    # Output: 10
println(closest_integer("15.3"))  # Output: 15
println(closest_integer("14.5"))  # Output: 15
println(closest_integer("-14.5")) # Output: -15
