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
    n = length(numbers)
    rolling_max_list = Vector{Int}(undef, n)
    current_max = numbers[1]
    rolling_max_list[1] = current_max

    for i in 2:n
        current_max = max(current_max, numbers[i])
        rolling_max_list[i] = current_max
    end

    return rolling_max_list
end
