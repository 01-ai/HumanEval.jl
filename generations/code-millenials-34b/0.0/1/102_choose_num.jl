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
    if x > y
        return -1
    end
    if y % 2 == 0
        return y
    end
    if x % 2 == 0
        return x
    end
    for i in y-1:-2:x
        if i % 2 == 0
            return i
        end
    end
    return -1
end

# Test cases
println(choose_num(12, 15))  # Expected output: 14
println(choose_num(13, 12))  # Expected output: -1

