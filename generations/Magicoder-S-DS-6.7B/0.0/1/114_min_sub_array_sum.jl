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
    current_sum = 0
    for num in nums
        current_sum += num
        min_sum = min(min_sum, current_sum)
        if current_sum > 0
            current_sum = 0
        end
    end
    return min_sum
end

# Test cases
println(min_sub_array_sum([2, 3, 4, 1, 2, 4])) # Expected output: 1
println(min_sub_array_sum([-1, -2, -3])) # Expected output: -6
