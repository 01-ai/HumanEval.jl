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
    # Create a dictionary to store the index of each number in the original list
    index_dict = Dict{Int, Int}()
    for (i, num) in enumerate(nums)
        index_dict[num] = i
    end

    # Sort the numbers based on the sum of their digits and their index in the original list
    sorted_nums = sort(nums, by = x -> (sum(parse(Int, string(abs(x)))), index_dict[x]))

    return sorted_nums
end
