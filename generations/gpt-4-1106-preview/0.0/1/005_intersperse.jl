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
    # If the input vector is empty or has only one element, return it as is
    if length(numbers) <= 1
        return numbers
    end

    # Create a new vector to store the result
    result = Vector{Int}()

    # Iterate through the numbers, appending the number and delimiter to the result
    for i in 1:length(numbers)
        push!(result, numbers[i])
        # Add the delimiter after each element except the last one
        if i < length(numbers)
            push!(result, delimiter)
        end
    end

    return result
end
println(intersperse(Int[], 4)) # Should print an empty array

println(intersperse([1, 2, 3], 4)) # Should print [1, 4, 2, 4, 3]
