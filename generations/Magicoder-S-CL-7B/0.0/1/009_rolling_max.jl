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
    max_numbers = Vector{Int}(undef, length(numbers))
    max_numbers[1] = numbers[1]
    for i in 2:length(numbers)
        max_numbers[i] = max(max_numbers[i-1], numbers[i])
    end
    return max_numbers
end
