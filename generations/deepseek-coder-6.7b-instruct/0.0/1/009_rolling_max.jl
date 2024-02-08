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
    max_num = maximum(numbers)
    max_indices = findall(x -> x == max_num, numbers)
    rolling_max_nums = zeros(Int, length(numbers))
    rolling_max_nums[max_indices] .= max_num
    for i in (max_indices[1]+1):length(numbers)
        rolling_max_nums[i] = max(rolling_max_nums[i-1], numbers[i])
    end
    return rolling_max_nums
end
