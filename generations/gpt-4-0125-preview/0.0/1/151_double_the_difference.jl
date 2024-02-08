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
    # Filter the list to include only positive odd integers
    filtered_xs = filter(x -> x > 0 && x % 2 != 0, xs)
    
    # Square each number in the filtered list and sum them up
    sum_of_squares = sum(x -> x^2, filtered_xs)
    
    return sum_of_squares
end

# Example usage
println(double_the_difference([1, 3, 2, 0]))  # Expected output: 10
println(double_the_difference([-1, -2, 0]))   # Expected output: 0
println(double_the_difference([9, -2]))       # Expected output: 81
println(double_the_difference([0]))           # Expected output: 0
