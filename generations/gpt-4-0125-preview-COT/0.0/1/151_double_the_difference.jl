"""
    double_the_difference(xs::Vector)

Given a list of numbers, return the sum of squares of the numbers in the list
that are odd. Ignore numbers that are negative or not integers.

If the input list is empty, return 0.

# Examples

```jldoctest
julia> double_the_difference([1, 3, 2, 0])  # 1 + 9 + 0 + 0
10

julia> double_the_difference([-1, -2, 0])
0

julia> double_the_difference([9, -2])
81

julia> double_the_difference([0])
0
```
"""
function double_the_difference(xs::Vector)
    # Step 1: Initialize sum variable
    sum_of_squares = 0
    
    # Step 2: Iterate through the list
    for x in xs
        # Step 3: Check for conditions (positive, integer, odd)
        if isa(x, Integer) && x > 0 && x % 2 != 0
            # Step 4: Square and add
            sum_of_squares += x^2
        end
    end
    
    # Step 5: Return the sum
    return sum_of_squares
end
