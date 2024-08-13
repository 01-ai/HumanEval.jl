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
    # Initialize variables to store the largest negative and smallest positive integers
    largest_negative = nothing
    smallest_positive = nothing

    # Iterate through each element in the list
    for x in xs
        if x < 0
            # Update largest_negative if it's either not set or found a larger negative number
            if isnothing(largest_negative) || x > largest_negative
                largest_negative = x
            end
        elseif x > 0
            # Update smallest_positive if it's either not set or found a smaller positive number
            if isnothing(smallest_positive) || x < smallest_positive
                smallest_positive = x
            end
        end
    end

    # Return the tuple of largest negative and smallest positive
    return (largest_negative, smallest_positive)
end
