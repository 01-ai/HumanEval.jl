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
    largest_negative = nothing
    smallest_positive = nothing

    for x in xs
        if x < 0
            largest_negative = isnothing(largest_negative) ? x : max(largest_negative, x)
        elseif x > 0
            smallest_positive = isnothing(smallest_positive) ? x : min(smallest_positive, x)
        end
    end

    return (largest_negative, smallest_positive)
end
