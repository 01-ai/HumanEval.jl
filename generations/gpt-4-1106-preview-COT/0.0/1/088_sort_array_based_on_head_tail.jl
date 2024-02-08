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
    # Step 1: Check for empty or single-element array
    if length(xs) <= 1
        return xs
    end
    
    # Step 2: Calculate the sum of the first and last elements
    sum_head_tail = xs[1] + xs[end]
    
    # Step 3: Determine the sorting order
    sort_order = isodd(sum_head_tail) ? Base.Sort.Forward : Base.Sort.Reverse
    
    # Step 4: Create a copy of the array
    sorted_xs = copy(xs)
    
    # Step 5: Sort the copied array
    sort!(sorted_xs, order=sort_order)
    
    # Step 6: Return the sorted array
    return sorted_xs
end
