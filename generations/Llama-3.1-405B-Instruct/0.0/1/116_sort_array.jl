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

"""
    sort_array(arr::Vector{Int})::Vector{Int}

In this Kata, you have to sort an array of non-negative integers according to
number of ones in their binary representation in ascending order. For similar
number of ones, sort based on decimal value.

# Examples

```jldoctest
julia> sort_array([1, 5, 2, 3, 4]) == [1, 2, 4, 3, 5]
true

julia> sort_array([1, 0, 2, 3, 4]) == [0, 1, 2, 4, 3]
true
```
"""
function sort_array(arr::Vector{Int})::Vector{Int}
    sort(arr, by = x -> (count_ones(x), x))
end

# Helper function to count the number of ones in the binary representation of a number
function count_ones(n::Int)::Int
    count = 0
    while n > 0
        count += n & 1
        n >>= 1
    end
    count
end
