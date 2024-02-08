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
    # Step 1: Check if the input vector is empty
    if isempty(numbers)
        return Int[]
    end
    
    # Step 2: Initialize the result vector
    result = Int[]
    
    # Step 3: Iterate through the numbers vector
    for i in 1:length(numbers)-1
        push!(result, numbers[i])
        push!(result, delimeter)
    end
    
    # Step 4: Handle the last element separately
    push!(result, numbers[end])
    
    # Step 5: Return the result vector
    return result
end
println(intersperse(Int[], 4)) # Should print Int64[]

println(intersperse([1, 2, 3], 4)) # Should print [1, 4, 2, 4, 3]
