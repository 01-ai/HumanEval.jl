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
    # Initialize sum
    sum_squares = 0
    
    # Iterate through each element in the vector
    for x in xs
        # Check if the number is odd, non-negative, and an integer
        if x % 2 != 0 && x >= 0 && x == floor(x)
            # Add the square of the number to the sum
            sum_squares += x^2
        end
    end
    
    # Return the computed sum of squares
    return sum_squares
end
