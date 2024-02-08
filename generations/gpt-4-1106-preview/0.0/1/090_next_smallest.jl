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
    # Remove duplicates and sort the list
    unique_sorted_xs = sort(unique(xs))
    
    # Check if there is a 2nd smallest element
    if length(unique_sorted_xs) < 2
        return nothing
    else
        return unique_sorted_xs[2]
    end
end

# Examples
println(next_smallest([1, 2, 3, 4, 5])) # Should print 2
println(next_smallest([5, 1, 4, 3, 2])) # Should print 2
println(next_smallest(Int[])) # Should print nothing
println(next_smallest([1, 1])) # Should print nothing
