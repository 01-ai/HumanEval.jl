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
    # Step 1: Initialize variables
    min_sum = nums[1]
    current_sum = nums[1]

    # Step 2: Iterate through the array
    for i in 2:length(nums)
        # If current_sum is greater than current element, start new sub-array from current element
        current_sum = min(current_sum + nums[i], nums[i])
        
        # Step 3: Update min_sum if current_sum is less than min_sum
        min_sum = min(min_sum, current_sum)
    end

    # Step 4: Return the result
    return min_sum
end
