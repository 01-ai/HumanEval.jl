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
    # Round each element in the list to the upper int (Ceiling)
    rounded_xs = ceil.(Int, xs)
    
    # Compute the sum of squared numbers
    sum_of_squares = sum(x^2 for x in rounded_xs)
    
    return sum_of_squares
end
println(sum_squares_round([1, 2, 3]))       # Output: 14
println(sum_squares_round([1, 4, 9]))       # Output: 98
println(sum_squares_round([1, 3, 5, 7]))    # Output: 84
println(sum_squares_round([1.4, 4.2, 0]))   # Output: 29
println(sum_squares_round([-2.4, 1, 1]))    # Output: 6
