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
    result = Int[]
    dict = Dict{Int, Tuple{Int, Int}}()

    for (i, num) in enumerate(nums)
        digits_sum = sum(digits(abs(num)))
        if haskey(dict, digits_sum)
            push!(result, num)
        else
            dict[digits_sum] = (num, i)
        end
    end

    for (_, (num, _)) in sort(collect(dict))
        push!(result, num)
    end

    return result
end
