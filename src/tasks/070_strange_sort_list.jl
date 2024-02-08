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
    xs_sorted = sort(xs)
    res = copy(xs_sorted)
    i, j = 1, length(res)
    for k = i:j
        if isodd(k)
            res[k] = xs_sorted[i]
            i += 1
        else
            res[k] = xs_sorted[j]
            j -= 1
        end
    end
    res
end
