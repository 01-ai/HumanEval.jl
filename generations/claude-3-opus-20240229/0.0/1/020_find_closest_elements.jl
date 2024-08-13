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
    n = length(numbers)
    if n < 2
        throw(ArgumentError("The list must contain at least two numbers."))
    end

    min_diff = Inf
    closest_pair = (0.0, 0.0)

    for i in 1:n-1
        for j in i+1:n
            diff = abs(numbers[i] - numbers[j])
            if diff < min_diff
                min_diff = diff
                closest_pair = (min(numbers[i], numbers[j]), max(numbers[i], numbers[j]))
            end
        end
    end

    return closest_pair
end
