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
    if x > y || (x % 2 != 0 && y % 2 != 0)
        return -1
    end
    
    if y % 2 == 0
        return y
    else
        return y - 1
    end
end
