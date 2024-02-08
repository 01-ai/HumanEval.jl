"""
    rolling_max(numbers::Vector{Int})::Vector{Int}

From a given list of integers, generate a list of rolling maximum element found
until given moment in the sequence.

```jldoctest
julia> rolling_max([1, 2, 3, 2, 3, 4, 2])
7-element Vector{Int64}:
 1
 2
 3
 3
 3
 4
 4
```
"""
function rolling_max(numbers::Vector{Int})::Vector{Int}
    max_values = Vector{Int}(undef, length(numbers))
    max_value = 0

    for i in 1:length(numbers)
        max_value = max(max_value, numbers[i])
        max_values[i] = max_value
    end

    return max_values
end
