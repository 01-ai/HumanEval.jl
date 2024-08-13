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
    # Ensure x and y are positive
    if x <= 0 || y <= 0
        throw(DomainError("x and y must be positive integers"))
    end

    # If x is greater than y, swap them
    if x > y
        x, y = y, x
    end

    # Find the biggest even integer number in the range [x, y]
    for i in y:-1:x
        if i % 2 == 0
            return i
        end
    end

    # If no even number is found, return -1
    return -1
end
