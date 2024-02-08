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
    # Initialize an empty vector to store the rolling max values
    rolling_max_values = Vector{Int}(undef, length(numbers))
    
    # Initialize the current max value with the first element
    # assuming the list is not empty
    current_max = numbers[1]
    
    for (i, number) in enumerate(numbers)
        # Update the current max if the current number is greater
        current_max = max(current_max, number)
        
        # Store the current max in the rolling max values
        rolling_max_values[i] = current_max
    end
    
    return rolling_max_values
end
