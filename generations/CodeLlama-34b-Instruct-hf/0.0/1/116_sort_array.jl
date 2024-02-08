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
    # Convert the array to a vector of binary strings
    binary_strings = map(x -> string(x, base=2), arr)

    # Count the number of ones in each binary string
    ones_count = map(x -> count(x, '1'), binary_strings)

    # Sort the array based on the number of ones and decimal value
    sorted_arr = sort(arr, by=x -> (ones_count[x], x))

    return sorted_arr
end
