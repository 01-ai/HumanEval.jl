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
    nums = -nums  # negate all the elements in the array
    current_sum = min_sum = nums[1]
    for num in nums[2:end]
        current_sum = max(num, current_sum + num)
        min_sum = min(min_sum, current_sum)
    end
    return -min_sum  # return the negation of min_sum
end
