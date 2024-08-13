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
    # Initialize the minimum sum to the first element
    min_sum = nums[1]
    # Initialize the current sum to 0
    current_sum = 0

    # Iterate through the array
    for num in nums
        # Add the current number to the current sum
        current_sum += num
        # Update the minimum sum if necessary
        min_sum = min(min_sum, current_sum)
        # If the current sum is positive, reset it to 0
        # This is because adding positive numbers will only increase the sum
        if current_sum > 0
            current_sum = 0
        end
    end

    return min_sum
end

# Example usage:
# julia> min_sub_array_sum([2, 3, 4, 1, 2, 4])
# 1
# julia> min_sub_array_sum([-1, -2, -3])
# -6
