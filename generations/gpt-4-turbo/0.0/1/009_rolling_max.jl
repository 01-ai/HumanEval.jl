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
    # Initialize an empty vector to store the rolling maximums
    maxima = Vector{Int}(undef, length(numbers))
    
    # Initialize the current maximum to the smallest possible integer
    current_max = typemin(Int)
    
    # Iterate through the list of numbers
    for i in 1:length(numbers)
        # Update the current maximum if the current number is greater
        if numbers[i] > current_max
            current_max = numbers[i]
        end
        # Store the current maximum in the result vector
        maxima[i] = current_max
    end
    
    return maxima
end
