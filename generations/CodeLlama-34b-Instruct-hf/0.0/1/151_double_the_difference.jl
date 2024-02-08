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
    # Check if the input list is empty
    if isempty(xs)
        return 0
    end

    # Initialize the sum to 0
    sum = 0

    # Iterate over the list and calculate the sum of the squares of the odd numbers
    for x in xs
        if isodd(x) && x > 0
            sum += x^2
        end
    end

    # Return the sum
    return sum
end
