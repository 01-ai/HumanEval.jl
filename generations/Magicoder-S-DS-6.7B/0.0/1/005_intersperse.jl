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
    result = Int[]
    for i in 1:length(numbers)
        pushfirst(result, numbers[i])
        if i < length(numbers)
            pushfirst(result, delimeter)
        end
    end
    return result
end

# Test cases
println(intersperse(Int[], 4)) # should return Int64[]
println(intersperse([1, 2, 3], 4)) # should return [1, 4, 2, 4, 3]
