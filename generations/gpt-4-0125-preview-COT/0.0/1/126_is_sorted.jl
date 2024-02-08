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
    # Step 1: Check for duplicates
    counts = Dict{Int, Int}()
    for x in xs
        counts[x] = get(counts, x, 0) + 1
        if counts[x] > 1
            return false
        end
    end

    # Step 2: Check if sorted
    for i in 1:length(xs)-1
        if xs[i] > xs[i+1]
            return false
        end
    end

    # Step 3: Return true if no duplicates and sorted
    return true
end