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
    # Initialize the minimum sum to the first element and current sum to 0
    min_sum = nums[1]
    current_sum = 0
    
    # Iterate through the array
    for num in nums
        # If current sum is positive, it will only increase the sum of the sub-array,
        # so reset it to the current number if it's less than 0
        if current_sum > 0
            current_sum = num
        else
            current_sum += num
        end
        
        # Update the minimum sum if the current sum is less than the minimum sum
        min_sum = min(min_sum, current_sum)
    end
    
    return min_sum
end
println(min_sub_array_sum([2, 3, 4, 1, 2, 4])) # Output should be 1
println(min_sub_array_sum([-1, -2, -3])) # Output should be -6
