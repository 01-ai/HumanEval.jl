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
    sorted_xs = sort(xs)
    n = length(sorted_xs)
    result = Vector{Int}(undef, n)
    i = 1
    j = n
    k = 1
    while i <= j
        result[k] = sorted_xs[i]
        k += 1
        i += 1
        if i <= j
            result[k] = sorted_xs[j]
            k += 1
            j -= 1
        end
    end
    return result
end
