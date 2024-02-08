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
    max_sum = 0
    s = 0
    for num in nums
        s += -num
        if s < 0
            s = 0
        end
        max_sum = max(s, max_sum)
    end

    if max_sum == 0
        max_sum = maximum(-i for i in nums)
    end

    min_sum = -max_sum
    return min_sum
end
