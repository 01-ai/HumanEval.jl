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
    result = Vector{Int}()
    for i in 1:length(numbers)
        if i < length(numbers)
            push!(result, numbers[i])
            push!(result, delimeter)
        else
            push!(result, numbers[i])
        end
    end
    return result
end
