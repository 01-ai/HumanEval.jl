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
    # Check if x is greater than y, if so, return -1 as there is no range
    if x > y
        return -1
    end

    # Start from y and go down to x to find the largest even number
    for num in y:-1:x
        if num % 2 == 0
            return num
        end
    end

    # If no even number is found, return -1
    return -1
end