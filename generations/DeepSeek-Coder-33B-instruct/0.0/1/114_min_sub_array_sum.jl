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
    min_sum = nums[1]
    cur_sum = 0
    for num in nums
        cur_sum = min(num, cur_sum + num)
        min_sum = min(min_sum, cur_sum)
    end
    return min_sum
end