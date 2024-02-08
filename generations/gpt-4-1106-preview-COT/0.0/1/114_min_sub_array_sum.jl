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
    # Step 1: Initialize current_min and global_min
    current_min = global_min = nums[1]

    # Step 2: Iterate through the nums array
    for i in 2:length(nums)
        num = nums[i]
        # Step 2a: Update current_min
        current_min = min(num, current_min + num)
        # Step 2b: Update global_min
        global_min = min(global_min, current_min)
    end

    # Step 3: global_min holds the minimum sum
    return global_min
end
