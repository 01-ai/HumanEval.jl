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
    max_num = numbers[1]
    result = [max_num]
    for num in numbers[2:end]
        max_num = max(max_num, num)
        push!(result, max_num)
    end
    return result
end
