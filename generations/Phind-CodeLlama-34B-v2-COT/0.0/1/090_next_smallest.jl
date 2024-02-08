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



# Step-by-step outline:
# 1. Check if the length of the input vector is less than 2. If it is, return nothing because there is no 2nd smallest element.
# 2. If the length of the input vector is 2 or more, sort the vector in ascending order.
# 3. Return the 2nd element of the sorted vector.

# Julia code:
function next_smallest(xs::Vector{Int})::Union{Nothing,Int}
    # Check if the length of the input vector is less than 2
    if length(xs) < 2
        return nothing
    end

    # Sort the vector in ascending order
    sorted_xs = sort(xs)

    # Return the 2nd element of the sorted vector
    return sorted_xs[2]
end
