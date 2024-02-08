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
    # Step 1: Check if the range is valid
    if x > y
        return -1
    end

    # Step 2: Iterate from y down to x to find the largest even number
    for num in y:-1:x
        # Step 3: Check if the current number is even
        if num % 2 == 0
            # Step 4: Return the even number
            return num
        end
    end

    # Step 5: If no even number is found, return -1
    return -1
end
