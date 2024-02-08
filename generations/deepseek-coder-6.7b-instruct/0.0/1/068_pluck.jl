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
    if isempty(xs)
        return Int[]
    end

    min_val = typemax(Int)
    min_idx = typemax(Int)

    for (idx, val) in enumerate(xs)
        if val % 2 == 0 && val <= min_val
            min_val = val
            min_idx = idx
        end
    end

    if min_val == typemax(Int)
        return Int[]
    else
        return [min_val, min_idx]
    end
end
