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
    result = Vector{Int}(undef, length(numbers))
    max_so_far = numbers[1]
    result[1] = max_so_far
    
    for i in 2:length(numbers)
        max_so_far = max(max_so_far, numbers[i])
        result[i] = max_so_far
    end
    
    return result
end
