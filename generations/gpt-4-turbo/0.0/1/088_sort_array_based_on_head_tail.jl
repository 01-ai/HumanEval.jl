"""
    sort_array_based_on_head_tail(xs::Int)::Vector{Int}

Given an array of non-negative integers, return a copy of the given array after
sorting, you will sort the given array in ascending order if the sum( first
index value, last index value) is odd, or sort it in descending order if the
sum( first index value, last index value) is even.

Note:

  - don't change the given array.

Examples:

```jldoctest
julia> sort_array_based_on_head_tail(Int[])
Int64[]

julia> sort_array_based_on_head_tail([5])
1-element Vector{Int64}:
 5

julia> sort_array_based_on_head_tail([2, 4, 3, 0, 1, 5])
6-element Vector{Int64}:
 0
 1
 2
 3
 4
 5

julia> sort_array_based_on_head_tail([2, 4, 3, 0, 1, 5, 6])
7-element Vector{Int64}:
 6
 5
 4
 3
 2
 1
 0
```
"""
function sort_array_based_on_head_tail(xs::Vector{Int})::Vector{Int}
    # Check if the array is empty or has only one element
    if length(xs) <= 1
        return copy(xs)
    end
    
    # Calculate the sum of the first and last element
    sum_head_tail = xs[1] + xs[end]
    
    # Determine the sorting order based on the sum of the head and tail
    if sum_head_tail % 2 == 0
        # Sum is even, sort in descending order
        return sort(xs, rev=true)
    else
        # Sum is odd, sort in ascending order
        return sort(xs)
    end
end
