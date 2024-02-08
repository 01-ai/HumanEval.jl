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

    # Round the number away from zero
    rounded_num = round(num + (num > 0 ? 0.5 : -0.5))

    # Convert the rounded number back to an integer
    return convert(Int, rounded_num)
end
