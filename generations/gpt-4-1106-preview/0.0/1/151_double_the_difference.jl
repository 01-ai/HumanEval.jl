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
function sum_of_squares_of_odds(xs::Vector)
    return sum(x^2 for x in xs if x > 0 && x % 2 == 1)
end

# Examples
println(sum_of_squares_of_odds([1, 3, 2, 0]))  # Should output 10
println(sum_of_squares_of_odds([-1, -2, 0]))   # Should output 0
println(sum_of_squares_of_odds([9, -2]))       # Should output 81
println(sum_of_squares_of_odds([0]))           # Should output 0
