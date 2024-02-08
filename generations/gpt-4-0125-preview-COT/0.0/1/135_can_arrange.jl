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
    # Step 1: Initialize the variable to store the largest index
    largest_index = -1
    
    # Step 2: Iterate through the array starting from the second element
    for i in 2:length(xs)
        # Step 3: Check if the current element is strictly less than its predecessor
        if xs[i] < xs[i-1]
            # Step 4: Update the largest index where the condition is met
            largest_index = i
        end
    end
    
    # Step 5: Return the result
    return largest_index
end
