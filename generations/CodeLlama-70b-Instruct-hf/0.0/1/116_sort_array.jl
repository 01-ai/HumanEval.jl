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
    # Count the number of ones in the binary representation of each number
    ones_count = map(x -> count(c -> c == '1', string(x, base=2)), arr)

    # Sort the array based on the number of ones in ascending order
    sorted_arr = arr[sortperm(ones_count)]

    return sorted_arr
end
