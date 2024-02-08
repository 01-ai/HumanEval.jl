"""
    sum_squares(xs::Vector{Int})::Int

This function will take a list of integers. For all entries in the list, the
function shall square the integer entry if its index is a multiple of 3 and will
cube the integer entry if its index is a multiple of 4 and not a multiple of 3.
The function will not change the entries in the list whose indexes are not a
multiple of 3 or 4. The function shall then return the sum of all entries.

# Examples

```jldoctest
julia> sum_squares([1, 2, 3])
12

julia> sum_squares(Int[])
0

julia> sum_squares([-1, -5, 2, -1, -5])
-8
```
"""
function sum_squares(xs::Vector{Int})::Int
    sum = 0
    for (i, x) in enumerate(xs)
        if i % 3 == 0 && i % 4 != 0
            sum += x^2
        elseif i % 4 == 0
            sum += x^3
        else
            sum += x
        end
    end
    return sum
end
