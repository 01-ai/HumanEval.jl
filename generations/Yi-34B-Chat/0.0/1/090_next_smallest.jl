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
    # Base case: an empty list has no 2nd smallest element
    if length(xs) == 0
        return nothing
    end

    # Find the smallest element and remove it from the list
    smallest = xs[1]
    xs = xs[2:end]

    # If the list now has zero elements, there is no 2nd smallest element
    if length(xs) == 0
        return nothing
    end

    # Find the 2nd smallest element and return it
    return minimum(xs)
end
