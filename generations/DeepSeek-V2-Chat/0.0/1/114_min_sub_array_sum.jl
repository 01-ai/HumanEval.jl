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
    # Initialize the minimum sum to a very large number
    min_sum = typemax(Int)
    # Initialize the current sum to 0
    current_sum = 0
    
    # Iterate through each number in the array
    for num in nums
        # Update the current sum to be the minimum of the current sum + num and num
        current_sum = min(current_sum + num, num)
        # Update the minimum sum to be the minimum of the current minimum sum and the current sum
        min_sum = min(min_sum, current_sum)
    end
    
    return min_sum
end
println(min_sub_array_sum([2, 3, 4, 1, 2, 4]))  # Output: 1
println(min_sub_array_sum([-1, -2, -3]))       # Output: -6
