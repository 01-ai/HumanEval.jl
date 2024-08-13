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
function find_closest_elements(numbers::Vector{Float64})
    # Sort the numbers to make comparison easier
    sorted_numbers = sort(numbers)
    # Initialize variables to store the closest pair and their difference
    closest_pair = (sorted_numbers[1], sorted_numbers[2])
    smallest_diff = abs(sorted_numbers[2] - sorted_numbers[1])
    
    # Iterate through the sorted list to find the pair with the smallest difference
    for i in 1:(length(sorted_numbers) - 1)
        diff = abs(sorted_numbers[i+1] - sorted_numbers[i])
        if diff < smallest_diff
            smallest_diff = diff
            closest_pair = (sorted_numbers[i], sorted_numbers[i+1])
        end
    end
    
    return closest_pair
end
