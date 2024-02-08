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
    # Check if the inputs are valid (positive integers)
    if x <= 0 || y <= 0
        throw(DomainError("Inputs must be positive integers"))
    end

    # If x > y, return -1 as there's no valid range
    if x > y
        return -1
    end

    # If x and y are the same, check if it's even
    if x == y
        return x % 2 == 0 ? x : -1
    end

    # If x < y, iterate from y to x in reverse order
    for i in y:-1:x
        # Check if the number is even
        if i % 2 == 0
            return i
        end
    end

    # If no even number is found, return -1
    return -1
end
