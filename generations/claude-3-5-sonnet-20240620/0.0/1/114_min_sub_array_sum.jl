"""
    min_sub_array_sum(nums::Vector{Int})::Int

Given an array of integers `nums`, find the minimum sum of any non-empty
sub-array of nums.

# Example

```jldoctest
julia> min_sub_array_sum([2, 3, 4, 1, 2, 4])
1

julia> min_sub_array_sum([-1, -2, -3])
-6
```
"""
function min_sub_array_sum(nums::Vector{Int})::Int
    n = length(nums)
    if n == 0
        error("Input array must not be empty")
    end

    min_sum = nums[1]
    current_sum = 0

    for num in nums
        current_sum = min(num, current_sum + num)
        min_sum = min(min_sum, current_sum)
    end

    return min_sum
end