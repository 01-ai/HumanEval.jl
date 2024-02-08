"""
    order_by_points(nums::Vector{Int})::Vector{Int}

Write a function which sorts the given list of integers in ascending order
according to the sum of their digits. Note: if there are several items with
similar sum of their digits, order them based on their index in original list.

# Examples

```jldoctest
julia> order_by_points([1, 11, -1, -11, -12])
5-element Vector{Int64}:
  -1
 -11
   1
 -12
  11

julia> order_by_points(Int[])
Int64[]
```
"""
function order_by_points(nums::Vector{Int})::Vector{Int}
    # Sort the numbers by the sum of their digits
    sorted_nums = sort(nums, by=x -> sum(digits(x)))

    # If there are ties, keep the order of the original list
    for i in 1:length(sorted_nums) - 1
        if sum(digits(sorted_nums[i])) == sum(digits(sorted_nums[i + 1]))
            while i < length(sorted_nums) - 1 && sum(digits(sorted_nums[i])) == sum(digits(sorted_nums[i + 1]))
                sorted_nums[i], sorted_nums[i + 1] = sorted_nums[i + 1], sorted_nums[i]
                i += 1
            end
        end
    end

    return sorted_nums
end
