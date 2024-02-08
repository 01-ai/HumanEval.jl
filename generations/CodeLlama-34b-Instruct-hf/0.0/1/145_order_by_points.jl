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
    # Create a dictionary to map each number to its sum of digits
    num_to_sum = Dict(num => sum(digits(num)) for num in nums)

    # Sort the dictionary by the sum of digits
    sorted_nums = sort(num_to_sum, by=x->x[2])

    # Return the sorted list of numbers
    return [num for (num, _) in sorted_nums]
end
