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
    result = similar(numbers)
    current_max = typemin(Int)
    
    for i in eachindex(numbers)
        current_max = max(current_max, numbers[i])
        result[i] = current_max
    end
    
    return result
end
