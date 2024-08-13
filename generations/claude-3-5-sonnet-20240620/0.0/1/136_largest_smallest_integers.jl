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
            if isnothing(largest_negative) || x > largest_negative
                largest_negative = x
            end
        elseif x > 0
            if isnothing(smallest_positive) || x < smallest_positive
                smallest_positive = x
            end
        end
    end

    return (largest_negative, smallest_positive)
end
println(largest_smallest_integers([2, 4, 1, 3, 5, 7]))  # (nothing, 1)
println(largest_smallest_integers(Int[]))  # (nothing, nothing)
println(largest_smallest_integers([0]))  # (nothing, nothing)

# Additional test cases
println(largest_smallest_integers([-1, -2, 3, 4]))  # (-1, 3)
println(largest_smallest_integers([-1, -2, -3]))  # (-1, nothing)
println(largest_smallest_integers([1, 2, 3]))  # (nothing, 1)
