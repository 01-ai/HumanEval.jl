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
    n = length(xs)
    if n == 0
        return Int[]
    end
    result = Vector{Int}(undef, n)
    i = 1
    while i <= n
        result[i] = xs[i]
        i += 1
    end
    for i = 1:n-1
        result[i] = min(result[i], result[i+1])
    end
    return result
end
