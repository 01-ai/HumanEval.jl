"""
    smallest_change(xs::Vector{Int})::Int

Given an array arr of integers, find the minimum number of elements that need to
be changed to make the array palindromic. A palindromic array is an array that
is read the same backwards and forwards. In one change, you can change one
element to any other element.

# Examples

```jldoctest
julia> smallest_change([1, 2, 3, 5, 4, 7, 9, 6])
4

julia> smallest_change([1, 2, 3, 4, 3, 2, 2])
1

julia> smallest_change([1, 2, 3, 2, 1])
0
```
"""
function smallest_change(xs::Vector{Int})::Int
    # Step 1: Initialize the counter
    changes_needed = 0
    
    # Step 2: Iterate through the first half of the array
    for i in 1:div(length(xs), 2)
        # Step 3: Compare elements from the start and end halves
        if xs[i] != xs[end - i + 1]
            # If they are not equal, increment the counter
            changes_needed += 1
        end
    end
    
    # Step 4: Return the counter
    return changes_needed
end
