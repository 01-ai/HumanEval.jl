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
    # Ensure the input vector has at least two elements
    @assert length(numbers) >= 2 "The input vector must have at least two elements."

    # Sort the numbers to make it easier to find the closest pair
    sorted_numbers = sort(numbers)

    # Initialize variables to track the closest pair
    min_diff = Inf
    closest_pair = (sorted_numbers[1], sorted_numbers[2])

    # Iterate through the sorted list to find the closest pair
    for i in 1:(length(sorted_numbers) - 1)
        diff = sorted_numbers[i + 1] - sorted_numbers[i]
        if diff < min_diff
            min_diff = diff
            closest_pair = (sorted_numbers[i], sorted_numbers[i + 1])
        end
    end

    return closest_pair
end