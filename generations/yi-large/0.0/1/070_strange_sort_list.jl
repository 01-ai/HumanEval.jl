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
    # Handle empty input
    if isempty(xs)
        return Int[]
    end

    # Initialize output list
    ys = Vector{Int}()

    # Find the minimum and maximum indices
    min_idx, max_idx = findmin(xs)
    max_val = xs[max_idx]

    # Loop until all elements are sorted
    while length(ys) < length(xs)
        # Add the minimum value not yet in ys
        push!(ys, xs[min_idx])
        # Remove the added value from xs
        deleteat!(xs, min_idx)

        # If xs is now empty, break
        isempty(xs) && break

        # Find the new maximum value and its index
        max_idx = findmax(xs)[2]
        max_val = xs[max_idx]

        # Add the maximum value not yet in ys
        push!(ys, xs[max_idx])
        # Remove the added value from xs
        deleteat!(xs, max_idx)
    end

    return ys
end

# Test cases
println(strange_sort_list([1, 2, 3, 4]))
println(strange_sort_list([5, 5, 5, 5]))
println(strange_sort_list(Int[]))
