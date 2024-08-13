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
    # Check if x or y are negative
    if x < 0 || y < 0
        return -1
    end
    
    # Ensure x is the smaller number
    if x > y
        return -1
    end
    
    # Find the biggest even number in the range [x, y]
    for i in y:-1:x
        if iseven(i)
            return i
        end
    end
    
    # If no even number was found, return -1
    return -1
end

# Example usage
# julia> choose_num(12, 15)
# 14
# julia> choose_num(13, 12)
# -1
