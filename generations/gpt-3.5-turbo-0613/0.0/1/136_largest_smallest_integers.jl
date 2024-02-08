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
    neg_ints = filter(x -> x < 0, xs)
    pos_ints = filter(x -> x > 0, xs)
    
    a = isempty(neg_ints) ? nothing : maximum(neg_ints)
    b = isempty(pos_ints) ? nothing : minimum(pos_ints)
    
    return (a, b)
end
