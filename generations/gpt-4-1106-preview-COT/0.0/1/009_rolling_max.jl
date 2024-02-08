"""
    rolling_max(numbers::Vector{Int})::Vector{Int}

From a given list of integers, generate a list of rolling maximum element found
until given moment in the sequence.

```jldoctest
julia> rolling_max([1, 2, 3, 2, 3, 4, 2])
7-element Vector{Int64}:
 1
 2
 3
 3
 3
 4
 4
```
"""
function rolling_max(numbers::Vector{Int})::Vector{Int}
    # Step 1: Initialize the result vector
    result = Vector{Int}()
    
    # Step 2: Initialize the current maximum value
    current_max = -Inf
    
    # Step 3: Iterate through the numbers
    for number in numbers
        # Step 4: Update the current maximum value
        current_max = max(current_max, number)
        
        # Step 5: Append the current maximum to the result
        push!(result, current_max)
    end
    
    # Step 6: Return the result
    return result
end
