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
    sorted_xs = Int[]  # Initialize an empty vector for the result
    while !isempty(xs)
        # Find and append the minimum value
        min_val = minimum(xs)
        push!(sorted_xs, min_val)
        deleteat!(xs, findfirst(==(min_val), xs))  # Remove the first occurrence of min_val
        
        # Check if the list is empty before finding the maximum
        if isempty(xs)
            break
        end
        
        # Find and append the maximum value
        max_val = maximum(xs)
        push!(sorted_xs, max_val)
        deleteat!(xs, findfirst(==(max_val), xs))  # Remove the first occurrence of max_val
    end
    return sorted_xs
end
