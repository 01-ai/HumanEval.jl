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
    min_sum = typemax(Int)
    cur_sum = 0
    for num in nums
        cur_sum += num
        if cur_sum < min_sum
            min_sum = cur_sum
        end
        if cur_sum > 0
            cur_sum = 0
        end
    end
    return min_sum == typemax(Int) ? 0 : min_sum
end
