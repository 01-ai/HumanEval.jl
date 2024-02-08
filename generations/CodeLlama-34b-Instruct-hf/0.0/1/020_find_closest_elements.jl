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
    # Sort the input vector in ascending order
    sorted_numbers = sort(numbers)

    # Initialize the closest pair of numbers
    closest_pair = (sorted_numbers[1], sorted_numbers[2])

    # Iterate over the sorted vector and find the closest pair of numbers
    for i in 2:length(sorted_numbers)
        # If the current number is closer to the previous number than the current closest pair,
        # update the closest pair
        if abs(sorted_numbers[i] - sorted_numbers[i-1]) < abs(closest_pair[1] - closest_pair[2])
            closest_pair = (sorted_numbers[i-1], sorted_numbers[i])
        end
    end

    return closest_pair
end
