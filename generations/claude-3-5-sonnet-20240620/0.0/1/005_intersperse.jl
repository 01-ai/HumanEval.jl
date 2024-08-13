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
    if isempty(numbers)
        return Int[]
    end
    
    result = Vector{Int}(undef, 2 * length(numbers) - 1)
    for i in 1:length(numbers)
        result[2i - 1] = numbers[i]
        if i < length(numbers)
            result[2i] = delimiter
        end
    end
    
    return result
end
