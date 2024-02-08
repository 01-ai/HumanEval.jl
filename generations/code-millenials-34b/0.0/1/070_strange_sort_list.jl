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
    isempty(xs) && return Int[]
    n = length(xs)
    ys = similar(xs)
    ys[1:2:n] = sort(xs)[1:div(n,2)]
    ys[2:2:n] = sort(xs, rev=true)[1:div(n,2)]
    return ys
end

# Test the function
println(strange_sort_list([1, 2, 3, 4]))
println(strange_sort_list([5, 5, 5, 5]))
println(strange_sort_list(Int[]))

