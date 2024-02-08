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
    result = Int[]
    for value in values
        if typeof(value) == Int
            push!(result, value)
        end
    end
    return result
end

# Test cases
println(filter_integers(["a", 3.14, 5]))  # Expected output: [5]
println(filter_integers([1, 2, 3, "abc", Set(), []]))  # Expected output: [1, 2, 3]

