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
    # Step 1: Initialize an empty vector for integers
    filtered_integers = Int[]

    # Step 2: Iterate through the given list
    for value in values
        # Step 3: Check if the element is an integer
        if isa(value, Int)
            # Step 4: Append the integer to the vector
            push!(filtered_integers, value)
        end
    end

    # Step 5: Return the vector of integers
    return filtered_integers
end

# Examples for testing
println(filter_integers(["a", 3.14, 5]))  # Expected: [5]
println(filter_integers([1, 2, 3, "abc", Set(), []]))  # Expected: [1, 2, 3]
