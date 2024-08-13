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
    # Initialize the largest negative and smallest positive to nothing
    largest_negative = nothing
    smallest_positive = nothing

    # Loop through the list to find the largest negative and smallest positive
    for x in xs
        if x < 0
            if largest_negative === nothing || x > largest_negative
                largest_negative = x
            end
        elseif x > 0
            if smallest_positive === nothing || x < smallest_positive
                smallest_positive = x
            end
        end
    end

    # Return the tuple of largest negative and smallest positive
    return largest_negative, smallest_positive
end

# Test the function
println(largest_smallest_integers([2, 4, 1, 3, 5, 7])) # (nothing, 1)
println(largest_smallest_integers(Int[])) # (nothing, nothing)
println(largest_smallest_integers([0])) # (nothing, nothing)
