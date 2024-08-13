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
function sum_squares_round(xs::Vector{<:Real})::Int
    # Round each element to the upper int (ceiling)
    rounded_xs = ceil.(Int, xs)
    
    # Calculate the sum of squared numbers
    sum_squares = sum(x^2 for x in rounded_xs)
    
    return sum_squares
end

# Test the function
for (input, output) in [([1, 2, 3], 14),
                        ([1, 4, 9], 98),
                        ([1, 3, 5, 7], 84),
                        ([1.4, 4.2, 0], 29),
                        ([-2.4, 1, 1], 6)]
    @assert sum_squares_round(input) == output
end
