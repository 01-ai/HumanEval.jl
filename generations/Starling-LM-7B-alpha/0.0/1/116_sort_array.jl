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
    sorted_arr = sort(arr, by=x -> (count_ones(x), x))
    return sorted_arr
end

function count_ones(n::Int)
    count = 0
    while n > 0
        if mod(n, 2) == 1
            count += 1
        end
        n = div(n, 2)
    end
    return count
end
