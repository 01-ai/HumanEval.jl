"""
    sort_array(arr::Vector{Int})::Vector{Int}

In this Kata, you have to sort an array of non-negative integers according to
number of ones in their binary representation in ascending order. For similar
number of ones, sort based on decimal value.

It must be implemented like this:

# Examples

```jldoctest
julia> sort_array([1, 5, 2, 3, 4]) == [1, 2, 4, 3, 5]
true

julia> sort_array([1, 0, 2, 3, 4]) == [0, 1, 2, 4, 3]
true
```
"""


function sort_array(arr::Vector{Int})::Vector{Int}
    # Define a function to count the number of ones in the binary representation of a number
    count_ones(n) = count(x -> x == '1', string(bin(n; pad = true)[3:end]))

    # Sort the array using the count of ones in the binary representation and the decimal value as the tie breaker
    sort(arr, by = (x) -> (count_ones(x), x))
end

# Test cases
println(sort_array([1, 5, 2, 3, 4]) == [1, 2, 4, 3, 5])  # Should print: true
println(sort_array([1, 0, 2, 3, 4]) == [0, 1, 2, 4, 3])  # Should print: true

