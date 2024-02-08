"""
    sum_squares_round(xs::Vector)::Int

You are given a list of numbers. You need to return the sum of squared numbers
in the given list, round each element in the list to the upper int(Ceiling)
first.

# Examples

```jldoctest
julia> sum_squares_round([1, 2, 3])
14

julia> sum_squares_round([1, 4, 9])
98

julia> sum_squares_round([1, 3, 5, 7])
84

julia> sum_squares_round([1.4, 4.2, 0])
29

julia> sum_squares_round([-2.4, 1, 1])
6
```
"""
function sum_squares_round(xs::Vector)::Int
    # Step 2: Initialize the sum variable
    sum_squared = 0
    
    # Step 3: Iterate over each element in the vector
    for x in xs
        # Step 4: Round the element to the upper integer
        rounded_x = ceil(Int, x)
        
        # Step 5: Square the rounded number
        squared_x = rounded_x^2
        
        # Step 6: Add the squared number to the sum
        sum_squared += squared_x
    end
    
    # Step 7: Return the sum
    return sum_squared
end
