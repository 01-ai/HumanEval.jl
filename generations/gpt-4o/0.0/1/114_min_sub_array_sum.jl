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
    min_sum = nums[0]
    # Initialize the current sum to the first element
    current_sum = nums[0]
    
    # Iterate through the array starting from the second element
    for i in 2:length(nums)
        # Update the current sum to be the minimum of the current element
        # or the current sum plus the current element
        current_sum = min(nums[i], current_sum + nums[i])
        # Update the minimum sum if the current sum is smaller
        min_sum = min(min_sum, current_sum)
    end
    
    return min_sum
end

# Example usage
println(min_sub_array_sum([2, 3, 4, 1, 2, 4]))  # Output: 1
println(min_sub_array_sum([-1, -2, -3]))        # Output: -6
