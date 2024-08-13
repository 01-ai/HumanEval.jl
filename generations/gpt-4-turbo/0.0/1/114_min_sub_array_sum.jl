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
    # Initialize the current minimum sum and global minimum sum with the first element
    current_min = nums[1]
    global_min = nums[1]
    
    # Iterate through the array starting from the second element
    for i in 2:length(nums)
        # Update the current minimum sum
        current_min = min(nums[i], current_min + nums[i])
        # Update the global minimum sum if the current minimum is smaller
        global_min = min(global_min, current_min)
    end
    
    return global_min
end
