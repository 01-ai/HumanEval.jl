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
function intersperse(numbers::Vector{Int}, delimeter::Int)::Vector{Int}
    # Check if the input vector is empty
    if isempty(numbers)
        return Int[]
    end
    
    # Initialize the result vector
    result = Int[]
    
    # Iterate through the numbers, adding each number and the delimeter to the result
    for i in 1:length(numbers)-1
        push!(result, numbers[i])
        push!(result, delimeter)
    end
    
    # Add the last number without a following delimeter
    push!(result, numbers[end])
    
    return result
end
