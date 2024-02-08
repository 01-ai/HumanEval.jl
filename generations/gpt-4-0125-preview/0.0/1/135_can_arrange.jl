"""
can_arrange(xs::Vector{Int})::Int

Create a function which returns the largest index of an element which is not
greater than or equal to the element immediately preceding it. If no such
element exists then return -1. The given array will not contain duplicate
values.

# Examples

```jldoctest
julia> can_arrange([1, 2, 4, 3, 5])
4

julia> can_arrange([1, 2, 3])
-1
```
"""
function can_arrange(xs::Vector{Int})::Int
    # Initialize the largest index to -1 as default when no such element exists
    largest_index = -1
    
    # Iterate through the array starting from the second element
    for i in 2:length(xs)
        # Check if the current element is not greater than or equal to the previous one
        if xs[i] < xs[i-1]
            # Update the largest index
            largest_index = i
        end
    end
    
    return largest_index
end
