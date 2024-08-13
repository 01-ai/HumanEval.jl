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
    # Handle the case of an empty input list
    if isempty(numbers)
        return Int[]
    end

    # Initialize the result list with the first element
    result = [numbers[1]]

    # Loop through the rest of the elements, inserting the delimiter
    for i in 2:length(numbers)
        push!(result, delimiter)
        push!(result, numbers[i])
    end

    return result
end

# Example usage
println(intersperse(Int[], 4))
println(intersperse([1, 2, 3], 4))
