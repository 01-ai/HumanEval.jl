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
    # Step 1: Initialize an empty vector for the result
    result = Int[]

    # Step 2: Sort the input vector
    sorted_xs = sort(xs)

    # Step 3: Loop until the sorted vector is empty
    while !isempty(sorted_xs)
        # Append the first element (minimum) and remove it
        push!(result, popfirst!(sorted_xs))
        
        # If not empty, append the last element (maximum) and remove it
        if !isempty(sorted_xs)
            push!(result, pop!(sorted_xs))
        end
    end

    # Step 4: Return the result vector
    return result
end
