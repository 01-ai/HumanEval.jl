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
    # Step 1: Sort the input array in ascending order
    sort!(numbers)

    # Step 2: Initialize a minimum difference and the closest pair
    min_diff = typemax(Float64)
    closest_pair = (0.0, 0.0)

    # Step 3: Iterate through the array
    for i in 1:(length(numbers) - 1)
        # Calculate the difference between the current pair of elements
        diff = numbers[i + 1] - numbers[i]

        # Step 4: Update the minimum difference and the closest pair if necessary
        if diff < min_diff
            min_diff = diff
            closest_pair = (numbers[i], numbers[i + 1])
        end
    end

    # Step 5: Return the closest pair
    return closest_pair
end
