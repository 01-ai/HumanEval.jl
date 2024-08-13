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
    # Helper function to calculate the sum of digits
    function digit_sum(n::Int)::Int
        return sum(abs(digit) for digit in digits(abs(n)))
    end

    # Sort the list using a custom comparison function
    sorted_nums = sort(nums, by = x -> (digit_sum(x), findfirst(==(x), nums)))

    return sorted_nums
end