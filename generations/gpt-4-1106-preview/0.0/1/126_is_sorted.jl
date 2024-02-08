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
    # Check if the vector is empty or has only one element
    if length(xs) <= 1
        return true
    end
    
    # Iterate through the vector to check if it is sorted and has no duplicates
    for i in 2:length(xs)
        # If the current element is less than the previous one, it's not sorted
        if xs[i] < xs[i-1]
            return false
        end
        # If the current element is equal to the previous one, it has duplicates
        if xs[i] == xs[i-1]
            return false
        end
    end
    
    # If the loop completes without returning false, the vector is sorted
    return true
end
