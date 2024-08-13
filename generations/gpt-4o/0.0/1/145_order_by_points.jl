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
    function sum_of_digits(n::Int)
        return sum(abs(n) % 10^i ÷ 10^(i-1) for i in 1:floor(Int, log10(abs(n)) + 1))
    end

    # Sort the numbers based on the sum of their digits
    return sort(nums, by=sum_of_digits)
end
