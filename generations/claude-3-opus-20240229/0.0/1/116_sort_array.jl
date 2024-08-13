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
    # Define a helper function to count the number of ones in binary representation
    function count_ones(n::Int)::Int
        count = 0
        while n > 0
            count += n & 1
            n >>= 1
        end
        return count
    end
    
    # Sort the array based on the number of ones and decimal value
    return sort(arr, by=x -> (count_ones(x), x))
end
