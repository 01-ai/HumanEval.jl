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
    # Initialize current_sum and min_sum with the first element.
    current_sum = nums[1]
    min_sum = nums[1]

    # Iterate through the array starting from the second element.
    for i in 2:length(nums)
        # If current_sum is positive, it cannot contribute to a minimum sum,
        # so we start a new sub-array from the current element.
        # Otherwise, we add the current element to the current_sum.
        current_sum = min(nums[i], current_sum + nums[i])

        # Update min_sum if current_sum is smaller.
        min_sum = min(min_sum, current_sum)
    end

    return min_sum
end
