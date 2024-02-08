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
    min_sum = sum(nums)
    for i in 1:length(nums)
        for j in (i+1):length(nums)
            sub_sum = sum(nums[i:j])
            min_sum = min(min_sum, sub_sum)
        end
    end
    return min_sum
end
