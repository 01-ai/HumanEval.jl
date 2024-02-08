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
    # Step 1: Check if the list is empty
    if isempty(xs)
        return Int[]
    end
    
    # Step 2: Initialize the result list
    strange_sorted = Int[]
    
    # Step 3: Perform the strange sorting
    while !isempty(xs)
        # Step 3a: Find and append the minimum value
        min_val = minimum(xs)
        push!(strange_sorted, min_val)
        deleteat!(xs, findfirst(isequal(min_val), xs))  # Remove the minimum value
        
        # Step 3b: If not empty, find and append the maximum value
        if !isempty(xs)
            max_val = maximum(xs)
            push!(strange_sorted, max_val)
            deleteat!(xs, findfirst(isequal(max_val), xs))  # Remove the maximum value
        end
    end
    
    # Step 4: Return the result
    return strange_sorted
end
println(strange_sort_list([1, 2, 3, 4]))  # Should print [1, 4, 2, 3]
println(strange_sort_list([5, 5, 5, 5]))  # Should print [5, 5, 5, 5]
println(strange_sort_list(Int[]))         # Should print []
