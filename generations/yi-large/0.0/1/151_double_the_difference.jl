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
    # Initialize the result to 0
    result = 0

    # Loop through each element in the list
    for x in xs
        # Check if the number is odd, positive, and an integer
        if x > 0 && isinteger(x) && mod(x, 2) != 0
            # Add the square of the number to the result
            result += x^2
        end
    end

    # Return the result
    return result
end

# Test cases
println(double_the_difference([1, 3, 2, 0]))  # Expected: 10
println(double_the_difference([-1, -2, 0]))   # Expected: 0
println(double_the_difference([9, -2]))       # Expected: 81
println(double_the_difference([0]))           # Expected: 0
