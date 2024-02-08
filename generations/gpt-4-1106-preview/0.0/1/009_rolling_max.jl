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
    
    # Initialize the current maximum with the first element
    current_max = numbers[1]
    rolling_max_values[1] = current_max
    
    # Iterate through the numbers starting from the second element
    for i in 2:length(numbers)
        # Update the current maximum if the current number is greater
        current_max = max(current_max, numbers[i])
        # Store the current maximum in the rolling max values
        rolling_max_values[i] = current_max
    end
    
    return rolling_max_values
end
