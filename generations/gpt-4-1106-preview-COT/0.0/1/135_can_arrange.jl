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
    largest_index = -1  # Step 1: Initialize the largest_index to -1
    
    # Step 2: Iterate through the vector starting from the second element
    for i in 2:length(xs)
        # Step 3: Compare the current element with the previous one
        if xs[i] < xs[i-1]
            # Step 4: Update the largest_index if the condition is met
            largest_index = i
        end
    end
    
    # Step 5: Return the largest_index
    return largest_index
end
println(can_arrange([1, 2, 4, 3, 5]))  # Expected output: 4
println(can_arrange([1, 2, 3]))        # Expected output: -1
