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
    # Step 1: Return 0 if the input vector is empty
    if isempty(xs)
        return 0
    end
    
    # Step 2: Initialize the sum of squares
    sum_of_squares = 0
    
    # Step 3: Iterate over each element in the vector
    for x in xs
        # Step 4: Check if the element is an integer, non-negative, and odd
        if isa(x, Integer) && x > 0 && isodd(x)
            # Step 5: Square the element and add it to the sum
            sum_of_squares += x^2
        end
    end
    
    # Step 6: Return the sum
    return sum_of_squares
end
println(double_the_difference([1, 3, 2, 0]))  # Should output 10
println(double_the_difference([-1, -2, 0]))   # Should output 0
println(double_the_difference([9, -2]))       # Should output 81
println(double_the_difference([0]))           # Should output 0
