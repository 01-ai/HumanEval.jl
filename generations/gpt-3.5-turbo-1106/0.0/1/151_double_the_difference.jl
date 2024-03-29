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
    total = 0
    for x in xs
        if x > 0 && x % 2 != 0 && x == floor(x)
            total += x^2
        end
    end
    return total * 2
end
