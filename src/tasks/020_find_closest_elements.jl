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
function find_closest_elements(numbers::Vector{Float64})::Tuple{Float64,Float64}
    closest_pair = typemax(Float64)
    distance = typemax(Float64)

    for (idx, elem) in enumerate(numbers)
        for (idx2, elem2) in enumerate(numbers)
            if idx != idx2
                new_distance = abs(elem - elem2)
                if new_distance < distance
                    distance = new_distance
                    closest_pair = minmax(elem, elem2)
                end
            end
        end
    end

    return closest_pair
end
