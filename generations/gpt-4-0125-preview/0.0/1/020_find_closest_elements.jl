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
    # Step 1: Sort the input vector
    sorted_numbers = sort(numbers)
    
    # Initialize variables to store the closest pair found and the smallest difference found
    closest_pair = (sorted_numbers[1], sorted_numbers[2])
    smallest_difference = abs(sorted_numbers[2] - sorted_numbers[1])
    
    # Step 2: Iterate through the sorted vector to find the closest pair
    for i in 2:length(sorted_numbers)-1
        current_difference = abs(sorted_numbers[i+1] - sorted_numbers[i])
        if current_difference < smallest_difference
            smallest_difference = current_difference
            closest_pair = (sorted_numbers[i], sorted_numbers[i+1])
        end
    end
    
    # Step 3: Return the closest pair found
    return closest_pair
end
