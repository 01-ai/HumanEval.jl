"""
    choose_num(x::Int, y::Int)::Int

This function takes two positive numbers x and y and returns the biggest even
integer number that is in the range [x, y] inclusive. If there's no such number,
then the function should return -1.

# Example

```jldoctest
julia> choose_num(12, 15)
14

julia> choose_num(13, 12)
-1
```
"""
function choose_num(x::Int, y::Int)::Int
    # Check if the input range is valid
    if x > y
        return -1
    end

    # Find the largest even number in the range [x, y]
    largest_even = y - (y % 2)

    # If the largest even number is less than x, return -1
    if largest_even < x
        return -1
    else
        return largest_even
    end
end
