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
    # Check for more than 1 duplicate and if the list is sorted in ascending order
    last_x = xs[1]
    duplicate_count = 1
    for x in xs[2:end]
        if x < last_x
            return false # Not sorted in ascending order
        elseif x == last_x
            duplicate_count += 1
            if duplicate_count > 1
                return false # More than 1 duplicate
            end
        else
            last_x = x
            duplicate_count = 1
        end
    end
    return true
end
