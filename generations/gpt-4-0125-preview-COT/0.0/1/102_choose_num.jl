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
    # Step 2: Range Adjustment
    if x > y
        return -1
    end

    # Step 3: Find the Largest Even Number
    # If y is odd, subtract 1 to make it even
    if y % 2 != 0
        y -= 1
    end

    # Check if the adjusted y is still within the range
    if y < x
        return -1
    else
        return y
    end
end
