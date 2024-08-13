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
    function sum_digits(n::Int)
        n == 0 && return 0
        return sum_digits(div(n, 10)) + rem(n, 10)
    end

    # Pair each number with its sum of digits and original index
    pairs = [(num, sum_digits(abs(num)), i) for (i, num) in enumerate(nums)]

    # Sort pairs first by sum of digits, then by original index
    sort!(pairs, by = x -> (x[2], x[3]))

    # Return the sorted numbers
    return [pair[1] for pair in pairs]
end
