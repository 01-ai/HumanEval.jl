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
    # Calculate the sum of the digits of each integer
    sums = [sum(digits(abs(n))) for n in nums]

    # Create a new vector of tuples
    nums_with_sums = [(n, i, s) for (i, (n, s)) in enumerate(zip(nums, sums))]

    # Sort the vector of tuples
    sorted_nums_with_sums = sort(nums_with_sums, by=x -> (x[3], x[2]))

    # Extract the original integers from the sorted vector of tuples
    sorted_nums = [n for (n, _, _) in sorted_nums_with_sums]

    return sorted_nums
end
