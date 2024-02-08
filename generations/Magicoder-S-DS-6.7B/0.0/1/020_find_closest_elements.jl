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
    sort_numbers = sort(numbers)
    min_diff = Inf
    closest_pair = (0.0, 0.0)

    for i in 2:length(sort_numbers)
        diff = sort_numbers[i] - sort_numbers[i-1]
        if diff < min_diff
            min_diff = diff
            closest_pair = (sort_numbers[i-1], sort_numbers[i])
        end
    end

    return closest_pair
end
