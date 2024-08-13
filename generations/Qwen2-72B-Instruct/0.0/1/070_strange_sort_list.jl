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
function strange_sort_list(xs::Vector{Int})
    sorted_xs = similar(xs)
    ismin = true
    while !isempty(xs)
        idx = if ismin
            findmin(xs)[2]
        else
            findmax(xs)[2]
        end
        push!(sorted_xs, xs[idx])
        deleteat!(xs, idx)
        ismin = !ismin
    end
    return sorted_xs
end
function strange_sort_list(xs::Vector{Int})
    sort!(xs)
    strange_sorted = Vector{Int}()
    while !isempty(xs)
        if length(xs) > 1
            push!(strange_sorted, xs[1], xs[end])
            xs = xs[2:end-1]
        else
            push!(strange_sorted, xs[1])
            xs = Int[]
        end
    end
    return strange_sorted
end
