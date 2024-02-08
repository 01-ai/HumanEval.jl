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
    even_nodes = filter(x -> mod(x, 2) == 0, xs)
    if length(even_nodes) == 0
        return Int[]
    end

    smallest_even_index = findfirst(x -> mod(x, 2) == 0, xs)
    smallest_even_value = mod(xs[smallest_even_index], 2) == 0 ? xs[smallest_even_index] : smallest_even_index

    for i in smallest_even_index+1:length(xs)
        if mod(xs[i], 2) == 0 && smallest_even_value > xs[i]
            smallest_even_value = xs[i]
            smallest_even_index = i
        end
    end

    return [smallest_even_value, smallest_even_index]
end
