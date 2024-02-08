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
        push_with_delimeter(result, numbers[i], delimeter, i == length(numbers))
    end
    return result
end

function push_with_delimeter(result::Vector{Int}, number::Int, delimeter::Int, is_last::Bool)
    push_number(result, number)
    if !is_last
        push_number(result, delimeter)
    end
end

function push_number(result::Vector{Int}, number::Int)
    push_number(result, number, false)
end

function push_number(result::Vector{Int}, number::Int, is_delimeter::Bool)
    if is_delimeter
        push_number(result, delimeter)
    else
        push_number(result, number)
    end
end
