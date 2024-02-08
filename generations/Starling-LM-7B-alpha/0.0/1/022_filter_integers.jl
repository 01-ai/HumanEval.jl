"""
    filter_integers(values::AbstractVector)::Vector{Int}

Filter a given list of any values only for integers.

# Examples

```jldoctest
julia> filter_integers(["a", 3.14, 5])
1-element Vector{Int64}:
 5

julia> filter_integers([1, 2, 3, "abc", Set(), []])
3-element Vector{Int64}:
 1
 2
 3
```
"""
function filter_integers(values::AbstractVector)::Vector{Int}
    result = []
    for value in values
        if isa(value, Int)
            push!(result, value)
        end
    end
    return result
end
