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
    result = Int[]
    sorted_xs = sort(xs)
    
    left = 1
    right = length(sorted_xs)
    
    while left <= right
        push!(result, sorted_xs[left])
        left += 1
        
        if left <= right
            push!(result, sorted_xs[right])
            right -= 1
        end
    end
    
    return result
end
