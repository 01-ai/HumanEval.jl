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
    # Step 1: Check for empty or single-element list
    if length(xs) <= 1
        return true
    end
    
    # Step 2: Initialize the last seen number
    last_seen = xs[1]
    
    # Step 3: Loop through the elements starting from the second
    for i in 2:length(xs)
        # Step 4: Check if the current element is not greater than the last seen
        if xs[i] < last_seen
            return false
        end
        
        # Step 5: Check for duplicates
        if xs[i] == last_seen
            return false
        end
        
        # Step 6: Update the last seen number
        last_seen = xs[i]
    end
    
    # Step 7: If loop completes, the list is sorted without duplicates
    return true
end
