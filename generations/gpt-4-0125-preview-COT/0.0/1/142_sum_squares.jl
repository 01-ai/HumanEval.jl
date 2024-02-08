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
    # Step 1: Initialize the sum variable
    total_sum = 0

    # Step 2: Iterate through the list with indexes
    for (index, value) in enumerate(xs)
        # Step 3: Check the index for specific conditions
        if index % 3 == 0 && index % 4 != 0
            # Square the element if index is a multiple of 3 (and not of 4)
            total_sum += value^2
        elseif index % 4 == 0
            # Cube the element if index is a multiple of 4
            total_sum += value^3
        else
            # Add the element as it is
            total_sum += value
        end
    end

    # Step 5: Return the sum
    return total_sum
end
