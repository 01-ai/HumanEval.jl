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
    # Check if the input list is empty
    if isempty(xs)
        return Int[]
    end

    # Sort the input list in ascending order
    sorted_xs = sort(xs)

    # Initialize an empty vector to store the result
    result = Int[]

    # Iterate over the sorted list two at a time
    for i in 1:2:length(sorted_xs)
        # Add the minimum and maximum values to the result
        push!(result, sorted_xs[i])
        if i + 1 <= length(sorted_xs)
            push!(result, sorted_xs[i + 1])
        end
    end

    return result
end
