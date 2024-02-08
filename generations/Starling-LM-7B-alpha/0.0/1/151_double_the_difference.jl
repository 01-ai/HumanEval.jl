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
    # Initialize a variable to store the sum of squares of odd numbers
    sum_of_squares = 0

    # Iterate through the input vector
    for x in xs
        # Check if the number is odd, non-negative, and an integer
        if isodd(x) && x >= 0 && isinteger(x)
            # Add the square of the number to the sum
            sum_of_squares += x^2
        end
    end

    # Double the sum of squares and return the result
    return 2 * sum_of_squares
end

function isodd(x)
    return mod(x, 2) == 1
end
