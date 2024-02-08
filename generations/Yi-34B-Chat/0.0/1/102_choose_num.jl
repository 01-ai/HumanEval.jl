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
    # Check if x and y are positive
    if x <= 0 || y <= 0
        error("x and y must be positive numbers")
    end

    # Loop through numbers from x to y
    for i in x:y
        # Check if the number is even
        if i % 2 == 0
            # If it's the biggest even number in the range, return it
            if i > x && i < y || i == x || i == y # Check if it's the first or last number
                return i
            end
        end
    end

    # If no even number is found, return -1
    return -1
end
