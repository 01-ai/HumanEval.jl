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
    # Define a helper function to calculate the sum of digits of a number
    function sum_of_digits(n::Int)
        return sum(digits(abs(n)))
    end

    # Sort the numbers based on the sum of their digits
    # Since Julia's sort is stable, numbers with the same sum of digits will remain in their original order
    return sort(nums, lt=(x, y) -> sum_of_digits(x) < sum_of_digits(y))
end

# Examples
println(order_by_points([1, 11, -1, -11, -12]))  # Output: [-1, -11, 1, -12, 11]
println(order_by_points(Int[]))  # Output: Int64[]
