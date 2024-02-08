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
    if length(xs) == 0
        return Int[]
    end

    sorted_xs = sort(xs)
    result = Int[]

    while length(sorted_xs) > 0
        append!(result, sorted_xs[1])
        sorted_xs = sorted_xs[2:end]

        if length(sorted_xs) > 0
            append!(result, sorted_xs[end])
            sorted_xs = sorted_xs[1:end-1]
        end
    end

    return result
end