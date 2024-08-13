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
    # Ensure x is not greater than y
    if x > y
        return -1
    end
    
    # Start from the larger number and work our way down
    for num in y:-1:x
        if iseven(num)
            return num
        end
    end
    
    # If no even number is found, return -1
    return -1
end
