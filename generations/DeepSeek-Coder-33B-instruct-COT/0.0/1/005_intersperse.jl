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
    for (i, num) in enumerate(numbers)
        push_num = num
        push_delim = delimeter
        if i != length(numbers)
            push_delim = delimeter
        else
            push_delim = 0
        end
        push_num != 0 && push_delim != 0 ? push_num : nothing
        push_num != 0 && push_delim != 0 ? push_delim : nothing
        push_num != 0 && push_delim != 0 ? push_num : nothing
        push_num != 0 && push_delim != 0 ? push_delim : nothing
    end
    return result
end
