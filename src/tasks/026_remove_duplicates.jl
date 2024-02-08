"""
    remove_duplicates(numbers::Vector{Int})::Vector{Int}

From a list of integers, remove all elements that occur more than once. Keep
order of elements left the same as in the input.

# Examples

```jldoctest
julia> remove_duplicates([1, 2, 3, 2, 4])
3-element Vector{Int64}:
 1
 3
 4
```
"""
function remove_duplicates(numbers::Vector{Int})::Vector{Int}
    seen = Dict{Int,Int}()
    for x in numbers
        seen[x] = get!(seen, x, 0) + 1
    end
    filter(x -> seen[x] == 1, numbers)
end
