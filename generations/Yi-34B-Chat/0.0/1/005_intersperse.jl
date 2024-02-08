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
    # Initialize the result vector with the same length as the input vector
    result = Vector{Int}(undef, length(numbers) + length(numbers) - 1)
    
    # Iterate over the numbers vector, inserting the delimeter between each pair of elements
    for i in 1:length(numbers) - 1
        result[i] = numbers[i]
        result[i + length(numbers)] = numbers[i + 1]
        # Insert the delimeter after each pair
        for j in 1:length(numbers) - i
            result[i + j] = delimeter
        end
    end
    
    # If the numbers vector has at least one element, insert the last number
    if length(numbers) > 0
        result[end] = numbers[end]
    end
    
    return result
end
