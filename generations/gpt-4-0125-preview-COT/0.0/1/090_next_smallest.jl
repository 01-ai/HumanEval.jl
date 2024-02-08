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
    # Step 1: Check for edge cases
    if length(unique(xs)) < 2
        return nothing
    end

    # Step 2 & 3: Find unique elements and sort them
    unique_sorted_xs = sort(unique(xs))

    # Step 4: Return the 2nd smallest element
    return length(unique_sorted_xs) >= 2 ? unique_sorted_xs[2] : nothing
end
