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
    # Create a tuple for each number, where the first element is the sum of its digits
    # and the second element is the original number
    nums_with_points = [(sum(digits(abs(num))), num) for num in nums]

    # Sort the numbers by their points and their original order
    sorted_nums = [num for (_, num) in sort(nums_with_points)]

    return sorted_nums
end
