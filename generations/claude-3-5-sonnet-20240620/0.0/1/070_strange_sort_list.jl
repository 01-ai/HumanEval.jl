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
    if isempty(xs)
        return Int[]
    end

    sorted = sort(xs)
    result = Int[]
    left, right = 1, length(sorted)
    
    while left <= right
        if length(result) % 2 == 0
            push!(result, sorted[left])
            left += 1
        else
            push!(result, sorted[right])
            right -= 1
        end
    end
    
    return result
end
