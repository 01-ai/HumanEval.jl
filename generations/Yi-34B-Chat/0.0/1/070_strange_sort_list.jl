"""
    strange_sort_list(xs::Vector{Int})::Vector{Int}

Given list of integers, return list in strange order. Strange sorting, is when
you start with the minimum value, then maximum of the remaining integers, then
minimum and so on.

# Examples

```jldoctest
julia> strange_sort_list([1, 2, 3, 4])
4-element Vector{Int64}:
 1
 4
 2
 3

julia> strange_sort_list([5, 5, 5, 5])
4-element Vector{Int64}:
 5
 5
 5
 5

julia> strange_sort_list(Int[])
Int64[]
```
"""
function strange_sort_list(xs::Vector{Int})::Vector{Int}
    # Base case: empty list returns empty list
    if length(xs) == 0
        return Int64[]
    end

    # Find the minimum value and remove it from the list
    min_value = minimum(xs)
    xs = xs[xs .!= min_value]

    # Find the maximum value from the remaining list and remove it
    max_value = maximum(xs)
    xs = xs[xs .!= max_value]

    # Recursively sort the remaining list
    return [min_value, max_value] + strange_sort_list(xs)
end
