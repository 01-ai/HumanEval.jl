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
    # Round each element in the list to the upper integer (Ceiling)
    rounded_xs = round.(Int, xs)
    
    # Square each element in the rounded list
    squared_rounded_xs = map(x -> x^2, rounded_xs)
    
    # Sum the squared rounded numbers
    result = sum(squared_rounded_xs)
    
    return result
end
