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
    # Calculate the sum of digits for each number
    sums = [sum(abs, digits(num)) for num in nums]

    # Create a list of tuples, where each tuple contains the index, sum of digits and the number itself
    nums_with_points = [(i, sums[i], nums[i]) for i in 1:length(nums)]

    # Sort the list of tuples first by the sum of digits, then by the index
    sorted_nums = sort(nums_with_points, by=x->(x[2], x[1]))

    # Return only the numbers from the sorted list of tuples
    return [num for (_, _, num) in sorted_nums]
end
