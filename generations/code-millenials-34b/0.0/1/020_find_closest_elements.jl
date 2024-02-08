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
    sort!(numbers)
    min_diff = Inf
    result = (0.0, 0.0)
    for i in 1:length(numbers)-1
        diff = numbers[i+1] - numbers[i]
        if diff < min_diff
            min_diff = diff
            result = (numbers[i], numbers[i+1])
        end
    end
    return result
end

# Test cases
println(find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2]))  # Expected output: (2.0, 2.2)
println(find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0]))  # Expected output: (2.0, 2.0)
