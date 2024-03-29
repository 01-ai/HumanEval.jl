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
    strange_sorted = Int[]
    left, right = 1, length(sorted_xs)
    
    while left <= right
        if left == right
            push!(strange_sorted, sorted_xs[left])
            break
        else
            push!(strange_sorted, sorted_xs[left])
            push!(strange_sorted, sorted_xs[right])
            left += 1
            right -= 1
        end
    end
    
    return strange_sorted
end

# Examples
println(strange_sort_list([1, 2, 3, 4])) # Output: [1, 4, 2, 3]
println(strange_sort_list([5, 5, 5, 5])) # Output: [5, 5, 5, 5]
println(strange_sort_list(Int[]))         # Output: []
