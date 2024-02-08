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
    neg_int = nothing
    pos_int = nothing

    for x in xs
        if x < 0 && !isnothing(neg_int) && neg_int < x
            continue
        elseif x < 0 && !isnothing(neg_int)
            neg_int = x
        elseif x > 0 && !isnothing(pos_int) && pos_int > x
            continue
        elseif x > 0 && !isnothing(pos_int)
            pos_int = x
        elseif x < 0
            neg_int = x
        elseif x > 0
            pos_int = x
        end
    end

    return (neg_int, pos_int)
end