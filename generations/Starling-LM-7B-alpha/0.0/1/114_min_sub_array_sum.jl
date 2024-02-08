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
    n = length(nums)
    min_sum = Inf
    current_sum = 0

    for i in 1:n
        current_sum += nums[i]
        min_sum = min(min_sum, current_sum)
        if current_sum < 0
            current_sum = 0
        end
    end

    return min_sum
end
