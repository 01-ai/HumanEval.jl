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
    function digits_sum(n)
        xs = strip(string(n), '-')
        total = sign(n) * parse(Int, xs[1])
        for i = 2:length(xs)
            total += parse(Int, xs[i])
        end
        total
    end
    sort(nums, by = digits_sum)
end
