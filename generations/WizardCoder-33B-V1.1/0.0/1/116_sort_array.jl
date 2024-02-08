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
    ones_count = [count_ones(i) for i in arr]

    # Sort the array based on the number of ones and the decimal value
    sorted_arr = sort(zip(ones_count, arr))

    # Return the sorted array
    return [i[2] for i in sorted_arr]
end

function count_ones(n::Int)::Int
    # Convert the number to binary and count the number of ones
    return count(c -> c == '1', bin(n))
end
