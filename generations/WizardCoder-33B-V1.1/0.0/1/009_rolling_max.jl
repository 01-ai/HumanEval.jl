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
    result[1] = numbers[1]
    for i in 2:length(numbers)
        result[i] = max(numbers[i], result[i-1])
    end
    return result
end
