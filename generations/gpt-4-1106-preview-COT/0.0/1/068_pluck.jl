"""
    pluck(xs::Vector{Int})::Vector{Int}

Given an array representing a branch of a tree that has non-negative integer
nodes your task is to pluck one of the nodes and return it. The plucked node
should be the node with the smallest even value. If multiple nodes with the same
smallest even value are found return the node that has smallest index.

The plucked node should be returned in a list, [ smalest_value, its index ], If
there are no even values or the given array is empty, return [].

# Constraints:

  - 1 <= nodes.length <= 10000
  - 0 <= node.value

# Examples:

```jldoctest
julia> pluck([4, 2, 3])  # 2 has the smallest even value, and 2 has the smallest index.
2-element Vector{Int64}:
 2
 2

julia> pluck([1, 2, 3])  # 2 has the smallest even value, and 2 has the smallest index.
2-element Vector{Int64}:
 2
 2

julia> pluck(Int[])
Int64[]

julia> pluck([5, 0, 3, 0, 4, 2]) # 0 is the smallest value, but  there are two zeros, so we will choose the first zero, which has the smallest index.
2-element Vector{Int64}:
 0
 2
```
"""
function pluck(xs::Vector{Int})::Vector{Int}
    # Step 1: Check if the input vector is empty
    if isempty(xs)
        return Int[]
    end

    # Step 2: Initialize variables for the smallest even value and its index
    smallest_even = typemax(Int)
    smallest_index = -1

    # Step 3: Iterate over the elements and their indices
    for (index, value) in enumerate(xs)
        # Step 4: Check if the current element is even
        if value % 2 == 0
            # Step 5: Update the smallest even value and its index if necessary
            if value < smallest_even
                smallest_even = value
                smallest_index = index
            end
        end
    end

    # Step 6: Check if an even value was found
    if smallest_index != -1
        # Step 7: Return the smallest even value and its index
        return [smallest_even, smallest_index]
    else
        # Step 8: Return an empty vector if no even value was found
        return Int[]
    end
end
