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
    if length(xs) <= 1
        return true
    end

    prev_x = xs[1]
    count = 1

    for x in xs[2:end]
        if x < prev_x
            return false
        elseif x == prev_x
            count += 1
            if count > 1
                return false
            end
        else
            count = 1
        end
        prev_x = x
    end

    return true
end