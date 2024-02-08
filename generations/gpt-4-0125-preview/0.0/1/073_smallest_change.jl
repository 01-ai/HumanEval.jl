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
    # Initialize a counter for the number of changes needed
    changes_needed = 0
    
    # Initialize pointers for the start and end of the array
    left = 1
    right = length(xs)
    
    # Iterate through the array from both ends towards the center
    while left < right
        # If the elements at the current pointers are not the same,
        # increment the counter
        if xs[left] != xs[right]
            changes_needed += 1
        end
        
        # Move the pointers towards the center
        left += 1
        right -= 1
    end
    
    # Return the total number of changes needed
    return changes_needed
end
