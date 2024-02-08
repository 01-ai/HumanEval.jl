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
    negatives = Int[]
    positives = Int[]
    for x in xs
        if x < 0
            push!(negatives, x)
        elseif x > 0
            push!(positives, x)
        end
    end
    if isempty(negatives)
        return (nothing, nothing)
    elseif isempty(positives)
        return (nothing, nothing)
    else
        return (maximum(negatives), minimum(positives))
    end
end
