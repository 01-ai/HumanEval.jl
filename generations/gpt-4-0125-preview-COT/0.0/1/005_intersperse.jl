"""
    intersperse(numbers::Vector{Int}, delimeter::Int)::Vector{Int}

Insert a number `delimeter` between every two consecutive elements of input list
`numbers'.

# Examples

```jldoctest
julia> intersperse(Int[], 4)
Int64[]

julia> intersperse([1, 2, 3], 4)
5-element Vector{Int64}:
 1
 4
 2
 4
 3
```
"""
function intersperse(numbers::Vector{Int}, delimiter::Int)::Vector{Int}
    # Step 1: Initialize an empty vector for the result
    result = Int[]

    # Step 2: Check if the input vector is empty
    if isempty(numbers)
        return result
    end

    # Step 3: Iterate through the input vector
    for i in 1:length(numbers)-1
        push!(result, numbers[i])  # Append current element
        push!(result, delimiter)   # Append delimiter
    end

    # Step 4: Append the last element
    push!(result, numbers[end])

    # Step 5: Return the result vector
    return result
end
