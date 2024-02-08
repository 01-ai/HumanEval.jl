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
    # Initialize an empty vector to store the filtered integers
    integers = Int[]

    # Iterate over each element in the input vector
    for value in values
        # Check if the current element is an integer
        if isa(value, Int)
            # If it is, push it to the integers vector
            push!(integers, value)
        end
    end

    # Return the integers vector
    return integers
end
