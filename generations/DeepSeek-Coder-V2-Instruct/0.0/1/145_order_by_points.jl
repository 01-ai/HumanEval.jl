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
    # Helper function to calculate the sum of digits of a number
    function sum_of_digits(n::Int)::Int
        sum(abs(n) |> string |> collect .|> x -> parse(Int, x))
    end

    # Sort the numbers based on the sum of their digits, and by their original index if sums are equal
    sorted_nums = sort(nums, by = n -> (sum_of_digits(n), findfirst(x -> x == n, nums)))

    return sorted_nums
end
