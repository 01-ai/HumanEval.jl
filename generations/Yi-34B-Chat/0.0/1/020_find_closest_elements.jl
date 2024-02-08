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
    # Sort the numbers in ascending order
    sorted_numbers = sort(numbers)

    # Initialize the result with the first two elements
    result = (sorted_numbers[1], sorted_numbers[2])

    # Loop through the rest of the elements to find the closest pair
    for i in 3:length(numbers)
        # Calculate the distance between the current number and the previous two
        current_distance = abs(sorted_numbers[i] - result[1]) + abs(sorted_numbers[i] - result[2])

        # If the current distance is smaller, update the result
        if current_distance < abs(result[2] - result[1])
            result = (sorted_numbers[i], sorted_numbers[i - 1])
        end
    end

    return result
end
