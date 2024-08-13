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
    # Return an empty array if the input is empty
    if isempty(xs)
        return Int[]
    end
    
    # Create a copy of the input array
    sorted_xs = copy(xs)
    
    # Calculate the sum of the first and last elements
    sum_head_tail = xs[1] + xs[end]
    
    # Sort the array based on the sum
    if sum_head_tail % 2 == 1
        # If the sum is odd, sort in ascending order
        sort!(sorted_xs)
    else
        # If the sum is even, sort in descending order
        sort!(sorted_xs, rev=true)
    end
    
    return sorted_xs
end
