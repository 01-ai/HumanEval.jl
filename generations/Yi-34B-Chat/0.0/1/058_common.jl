"""
common(l1::Vector, l2::Vector)::Vector

Return sorted unique common elements for two lists.

# Examples

```jldoctest
julia> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
3-element Vector{Int64}:
   1
   5
 653

julia> common([5, 3, 2, 8], [3, 2])
2-element Vector{Int64}:
 2
 3
```
"""
function common(l1::Vector, l2::Vector)::Vector
    # Sort both lists
    l1 = sort(l1)
    l2 = sort(l2)

    # Initialize the result vector
    result = Vector{eltype(l1)}(undef, 0)

    # Loop through the first list and check if the element is present in the second list
    for i in l1
        # If the element is present, add it to the result vector
        if findfirst(==(i), l2) !== nothing
            # If the element is already in the result vector, skip it
            if !(i in result)
                push!(result, i)
            end
        end
    end

    # Sort the result vector and return it
    sort!(result)
    return result
end
