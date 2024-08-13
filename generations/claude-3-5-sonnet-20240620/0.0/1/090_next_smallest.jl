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
    if length(xs) < 2
        return nothing
    end
    
    smallest = typemax(Int)
    second_smallest = typemax(Int)
    
    for x in xs
        if x < smallest
            second_smallest = smallest
            smallest = x
        elseif x < second_smallest && x != smallest
            second_smallest = x
        end
    end
    
    return second_smallest == typemax(Int) ? nothing : second_smallest
end
