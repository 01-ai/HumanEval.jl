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
    # Step 1: Initialize variables
    largest_negative = nothing
    smallest_positive = nothing

    # Step 2: Iterate through the vector
    for x in xs
        # Step 2a: Check for negative integers
        if x < 0
            if isnothing(largest_negative) || x > largest_negative
                largest_negative = x
            end
        end

        # Step 2b: Check for positive integers
        if x > 0
            if isnothing(smallest_positive) || x < smallest_positive
                smallest_positive = x
            end
        end
    end

    # Step 3: Return results
    return (largest_negative, smallest_positive)
end
