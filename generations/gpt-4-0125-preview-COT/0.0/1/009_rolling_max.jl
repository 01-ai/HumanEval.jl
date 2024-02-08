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
    # Step 1: Initialize variables
    result = Vector{Int}()
    current_max = typemin(Int)  # Initialize to the smallest Int value

    # Step 2: Iterate through the input list
    for number in numbers
        if number > current_max
            current_max = number  # Update current_max if a new max is found
        end
        push!(result, current_max)  # Append current_max to result
    end

    # Step 3: Return result
    return result
end
