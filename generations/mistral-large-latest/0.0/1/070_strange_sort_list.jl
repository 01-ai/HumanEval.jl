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
        return xs
    end

    # Initialize the sorted list
    sorted_list = Int[]

    # While there are still elements in the input list
    while !isempty(xs)
        # Find the minimum element and remove it from the list
        min_elem = findmin(xs)[2]
        deleteat!(xs, min_elem)
        push!(sorted_list, min_elem)

        # If there are still elements in the list, find the maximum element and remove it
        if !isempty(xs)
            max_elem = findmax(xs)[2]
            deleteat!(xs, max_elem)
            push!(sorted_list, max_elem)
        end
    end

    return sorted_list
end
