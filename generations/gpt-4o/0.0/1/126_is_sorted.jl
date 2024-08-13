"""
    is_sorted(xs::Vector{Int})::Bool

Given a list of numbers, return whether or not they are sorted in ascending
order. If list has more than 1 duplicate of the same number, return `false`.
Assume no negative numbers and only integers.

# Examples

```jldoctest
julia> is_sorted([5])
true

julia> is_sorted([1, 2, 3, 4, 5])
true

julia> is_sorted([1, 3, 2, 4, 5])
false

julia> is_sorted([1, 2, 3, 4, 5, 6])
true

julia> is_sorted([1, 2, 3, 4, 5, 6, 7])
true

julia> is_sorted([1, 3, 2, 4, 5, 6, 7])
false

julia> is_sorted([1, 2, 2, 3, 3, 4])
false

julia> is_sorted([1, 2, 2, 2, 3, 4])
false
```
"""
function is_sorted(xs::Vector{Int})::Bool
    # Check for duplicates
    counts = Dict{Int, Int}()
    for x in xs
        if haskey(counts, x)
            counts[x] += 1
            if counts[x] > 1
                return false
            end
        else
            counts[x] = 1
        end
    end

    # Check if the list is sorted
    for i in 2:length(xs)
        if xs[i] < xs[i-1]
            return false
        end
    end

    return true
end
println(is_sorted([5]))  # true
println(is_sorted([1, 2, 3, 4, 5]))  # true
println(is_sorted([1, 3, 2, 4, 5]))  # false
println(is_sorted([1, 2, 3, 4, 5, 6]))  # true
println(is_sorted([1, 2, 3, 4, 5, 6, 7]))  # true
println(is_sorted([1, 3, 2, 4, 5, 6, 7]))  # false
println(is_sorted([1, 2, 2, 3, 3, 4]))  # false
println(is_sorted([1, 2, 2, 2, 3, 4]))  # false
