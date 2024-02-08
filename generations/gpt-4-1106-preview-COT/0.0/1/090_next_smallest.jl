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
    # Step 1: Check if there are at least two elements
    if length(xs) < 2
        return nothing
    end

    # Step 2: Initialize smallest and second smallest
    smallest = Inf
    second_smallest = Inf

    # Step 3: Loop through the elements to find the smallest and second smallest
    for x in xs
        if x < smallest
            second_smallest = smallest
            smallest = x
        elseif x < second_smallest && x != smallest
            second_smallest = x
        end
    end

    # Step 4: Check if second smallest was found
    if second_smallest == Inf
        return nothing
    end

    # Step 5: Return the second smallest element
    return second_smallest
end
