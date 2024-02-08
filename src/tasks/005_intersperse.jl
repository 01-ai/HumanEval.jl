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
    if isempty(numbers)
        return Int[]
    end

    result = []

    for n in numbers[1:end-1]
        push!(result, n)
        push!(result, delimeter)
    end

    push!(result, numbers[end])

    return result
end
