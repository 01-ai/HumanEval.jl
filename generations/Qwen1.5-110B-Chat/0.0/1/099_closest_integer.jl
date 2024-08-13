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
    num = parse(Float64, value)
    if num >= 0
        if num - floor(num) < 0.5
            floor(Int, num)
        else
            ceil(Int, num)
        end
    else
        if abs(num) - floor(abs(num)) < 0.5
            floor(Int, num)
        else
            ceil(Int, num)
        end
    end
end
