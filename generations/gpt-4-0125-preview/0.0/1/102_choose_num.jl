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
    # Check if x is greater than y, if so, there's no range to search through
    if x > y
        return -1
    end

    # Iterate from y down to x
    for num in y:-1:x
        # Check if the current number is even
        if num % 2 == 0
            return num
        end
    end

    # If no even number was found, return -1
    return -1
end
