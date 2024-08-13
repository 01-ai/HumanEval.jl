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
    # Check if the range is valid (x <= y)
    if x > y
        return -1
    end
    
    # Start from the higher end, y, and move downwards to find the biggest even number
    for num in y:-1:x
        if iseven(num)
            return num
        end
    end
    
    # If no even number is found, return -1
    return -1
end
