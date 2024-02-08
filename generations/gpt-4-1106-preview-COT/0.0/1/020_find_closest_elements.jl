"""
    find_closest_elements(numbers::Vector{Float64})::Tuple{Float64, Float64}

From a supplied list of numbers (of length at least two) select and return two
that are the closest to each other and return them in order (smaller number,
larger number).

# Examples

```jldoctest
julia> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
(2.0, 2.2)

julia> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
(2.0, 2.0)
```
"""
function find_closest_elements(numbers::Vector{Float64})::Tuple{Float64, Float64}
    # Step 1: Check if the input vector has at least two elements
    if length(numbers) < 2
        throw(ArgumentError("Input vector must have at least two elements."))
    end
    
    # Step 2: Initialize variables
    min_diff = Inf  # Start with infinity as the minimum difference
    closest_pair = (0.0, 0.0)  # Placeholder for the closest pair
    
    # Step 3: Sort the input vector
    sorted_numbers = sort(numbers)
    
    # Step 4: Iterate through the sorted list to find the closest pair
    for i in 1:length(sorted_numbers)-1
        current_diff = sorted_numbers[i+1] - sorted_numbers[i]
        if current_diff < min_diff
            # Step 5: Update min_diff and closest_pair
            min_diff = current_diff
            closest_pair = (sorted_numbers[i], sorted_numbers[i+1])
        end
    end
    
    # Step 6: Return the closest pair
    return closest_pair
end
