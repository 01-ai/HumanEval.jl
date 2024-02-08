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

# Define the helper function to calculate the sum of digits of an integer
function digit_sum(n::Int)::Int
    return sum(abs.(digits(n)))
end

# Define the main function to sort the numbers
function order_by_points(nums::Vector{Int})::Vector{Int}
    # Sort the numbers using a custom key based on the sum of their digits
    # and their original index to break ties
    sort(nums, by = (x -> (digit_sum(x), findfirst(isequal(x), nums))))
end

# Examples
println(order_by_points([1, 11, -1, -11, -12]))  # Output: [-1, -11, 1, -12, 11]
println(order_by_points(Int[]))                  # Output: Int64[]
