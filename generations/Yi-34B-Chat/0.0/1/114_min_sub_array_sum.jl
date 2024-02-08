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
    # Base case: an empty array has a minimum sum of 0
    if length(nums) == 0
        return 0
    end

    # Initialize the minimum sum to the first element of the array
    min_sum = nums[1]

    # Iterate through the array and update the minimum sum
    for i in 2:length(nums)
        min_sum = min(min_sum + nums[i], nums[i])
    end

    return min_sum
end
