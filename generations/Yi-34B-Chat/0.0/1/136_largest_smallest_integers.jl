"""
    largest_smallest_integers(xs::Vector{Int})::Tuple{Union{Nothing, Int}, Union{Nothing,Int}}

Create a function that returns a tuple (a, b), where "a" is the largest of
negative integers, and "b" is the smallest of positive integers in a list. If
there is no negative or positive integers, return them as `nothing`.

# Examples

```jldoctest
julia> largest_smallest_integers([2, 4, 1, 3, 5, 7])
(nothing, 1)

julia> largest_smallest_integers(Int[])
(nothing, nothing)

julia> largest_smallest_integers([0])
(nothing, nothing)
```
"""
function largest_smallest_integers(xs::Vector{Int})::Tuple{Union{Nothing, Int}, Union{Nothing, Int}}
    # Initialize results as nothing
    a = nothing
    b = nothing

    # Loop through the list
    for x in xs
        # If x is positive and b is nothing or x is smaller than b, update b
        if x > 0 && (b === nothing || x < b)
            b = x
        # If x is negative and a is nothing or x is larger than a, update a
        elseif x < 0 && (a === nothing || x > a)
            a = x
        end
    end

    # Return the tuple of a and b
    return (a, b)
end
