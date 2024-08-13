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
    # Check if the list is empty
    if isempty(xs)
        return true
    end

    # Initialize the previous element to the first element
    prev = xs[1]

    # Iterate through the list starting from the second element
    for i in 2:length(xs)
        # Check if the current element is equal to or greater than the previous
        if xs[i] <= prev
            # If the current element is less than the previous, it's not sorted
            # If the current element is equal to the previous, there's a duplicate
            return false
        end
        # Update the previous element for the next iteration
        prev = xs[i]
    end

    # If no issues were found, the list is sorted
    return true
end

# Test the function
for (input, expected) in [
    ([5], true),
    ([1, 2, 3, 4, 5], true),
    ([1, 3, 2, 4, 5], false),
    ([1, 2, 3, 4, 5, 6], true),
    ([1, 3, 2, 4, 5, 6, 7], false),
    ([1, 2, 2, 3, 3, 4], false),
    ([1, 2, 2, 2, 3, 4], false)
]
    result = is_sorted(input)
    @assert result == expected "Expected $(expected) for input $(input), but got $result"
end
