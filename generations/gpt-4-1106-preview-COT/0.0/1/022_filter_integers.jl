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
    # Step 2: Initialize an empty vector for the result
    result = Int[]

    # Step 3: Iterate over each element in the values vector
    for value in values
        # Step 4: Check if the element is an integer
        if isa(value, Int)
            # Step 5: Append the integer to the result vector
            push!(result, value)
        end
    end

    # Step 6: Return the result vector
    return result
end
println(filter_integers(["a", 3.14, 5])) # Expected output: [5]
println(filter_integers([1, 2, 3, "abc", Set(), []])) # Expected output: [1, 2, 3]
