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
    neg_nums = filter(x -> x < 0, xs)
    pos_nums = filter(x -> x > 0, xs)

    if isempty(neg_nums)
        neg_max = nothing
    else
        neg_max = maximum(neg_nums)
    end

    if isempty(pos_nums)
        pos_min = nothing
    else
        pos_min = minimum(pos_nums)
    end

    return (neg_max, pos_min)
end
