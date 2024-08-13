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
    # Check if the list is empty or has less than 2 elements
    if length(xs) < 2
        return nothing
    end

    # Initialize the smallest and second smallest to the first element
    smallest = xs[1]
    second_smallest = nothing

    # Iterate through the list to find the second smallest
    for x in xs
        if x != smallest
            if second_smallest === nothing || x < second_smallest
                second_smallest = x
            end
            break
        end
    end

    # If we didn't find a second smallest, return nothing
    if second_smallest === nothing
        return nothing
    end

    # Now we can safely find the second smallest
    for x in xs
        if x != smallest && x < second_smallest
            second_smallest = x
        end
    end

    return second_smallest
end

# Example usage
# julia> next_smallest([1, 2, 3, 4, 5])
# 2
# julia> next_smallest([5, 1, 4, 3, 2])
# 2
# julia> next_smallest(Int[])
# 
# julia> next_smallest([1, 1])
# 

# Note: The function will return `nothing` if all elements are the same or if there is only one unique element in the list.
