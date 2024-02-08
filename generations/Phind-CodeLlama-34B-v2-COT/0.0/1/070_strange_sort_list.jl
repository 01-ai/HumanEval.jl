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
    # Sort the input list in ascending order
    sorted_xs = sort(xs)

    # Initialize an empty list to store the result
    result = Int[]

    # While the sorted list is not empty
    while !isempty(sorted_xs)
        # Add the minimum element from the sorted list to the result list
        push!(result, minimum(sorted_xs))
        deleteat!(sorted_xs, findmin(sorted_xs)[2])

        # If the sorted list is not empty, add the maximum element from the sorted list to the result list
        if !isempty(sorted_xs)
            push!(result, maximum(sorted_xs))
            deleteat!(sorted_xs, findmax(sorted_xs)[2])
        end
    end

    # Return the result list
    return result
end
