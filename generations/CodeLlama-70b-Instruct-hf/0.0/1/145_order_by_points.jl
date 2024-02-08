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
    # Create a dictionary to store the sum of digits of each number
    sum_dict = Dict{Int, Int}()

    # Calculate the sum of digits for each number
    for num in nums
        sum_dict[num] = sum(digits(num))
    end

    # Sort the numbers based on their sum of digits
    sorted_nums = sort(nums, by=x -> sum_dict[x])

    return sorted_nums
end
