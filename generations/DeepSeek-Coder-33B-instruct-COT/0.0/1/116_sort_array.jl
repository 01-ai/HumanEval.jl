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
    # Step 2 and 3
    arr_with_ones = [(i, count_ones(i)) for i in arr]
    # Step 4
    sort_arr_with_ones = sort(arr_with_ones, by = x -> (x[2], x[1]))
    # Step 5
    sorted_arr = [i[1] for i in sort_arr_with_ones]
    return sorted_arr
end

function count_ones(n::Int)::Int
    return count(c -> c == '1', bin(n, pad = 8))
end
