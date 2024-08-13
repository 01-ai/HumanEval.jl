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
function next_smallest(xs::Vector{Int})::Union{Nothing, Int}
    # Check if the vector is empty or has less than 2 unique elements
    if length(xs) < 2
        return nothing
    end
    
    # Sort the array
    sorted_xs = sort(xs)
    
    # Find the second smallest unique element
    smallest = sorted_xs[1]
    for i in 2:length(sorted_xs)
        if sorted_xs[i] > smallest
            return sorted_xs[i]
        end
    end
    
    # If no second unique smallest element is found
    return nothing
end
