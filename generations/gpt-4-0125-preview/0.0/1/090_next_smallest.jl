"""
    next_smallest(xs::Vector{Int})::Union{Nothing,Int}

You are given a list of integers. Write a function `next_smallest(xs)` that
returns the 2nd smallest element of the list. Return `nothing` if there is no
such element.

# Examples

```jldoctest
julia> next_smallest([1, 2, 3, 4, 5])
2

julia> next_smallest([5, 1, 4, 3, 2])
2

julia> next_smallest(Int[])

julia> next_smallest([1, 1])

```
"""
function next_smallest(xs::Vector{Int})::Union{Nothing,Int}
    # Step 1: Check if the list has less than 2 unique elements
    if length(unique(xs)) < 2
        return nothing
    end

    # Step 2: Remove duplicates
    unique_xs = unique(xs)

    # Step 3: Sort the list
    sort!(unique_xs)

    # Step 4: Return the second element
    return unique_xs[2]
end
