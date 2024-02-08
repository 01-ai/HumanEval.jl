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
function largest_smallest_integers(xs::Vector{Int})::Tuple{Union{Nothing, Int}, Union{Nothing,Int}}
    # Initialize variables to store the largest negative and smallest positive integers
    largest_negative = nothing
    smallest_positive = nothing

    # Iterate through each element in the vector
    for x in xs
        # Check if the current element is negative
        if x < 0
            # Update largest_negative if it's either nothing or less than the current element
            if isnothing(largest_negative) || x > largest_negative
                largest_negative = x
            end
        # Check if the current element is positive
        elseif x > 0
            # Update smallest_positive if it's either nothing or greater than the current element
            if isnothing(smallest_positive) || x < smallest_positive
                smallest_positive = x
            end
        end
    end

    # Return the tuple of largest_negative and smallest_positive
    return (largest_negative, smallest_positive)
end
