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
    # Step 1 & 2: Round to upper int and square each element
    squared_rounded_elements = [ceil(Int, x)^2 for x in xs]
    
    # Step 3: Sum the squared values
    sum_squared = sum(squared_rounded_elements)
    
    # Step 4: Return the sum
    return sum_squared
end
