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

    result = Vector{Int}(undef, 2 * length(numbers) - 1)
    result[1:2:end] = numbers
    result[2:2:end] = delimeter

    return result
end
