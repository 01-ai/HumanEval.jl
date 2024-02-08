"""
    separate_paren_groups(paren_string::String)::Vector{String}

Input to this function is a string containing multiple groups of nested
parentheses. Your goal is to separate those group into separate strings and
return the list of those. Separate groups are balanced (each open brace is
properly closed) and not nested within each other Ignore any spaces in the input
string.

# Examples

```jldoctest
julia> separate_paren_groups("( ) (( )) (( )( ))")
3-element Vector{String}:
 "()"
 "(())"
 "(()())"
```
"""
function separate_paren_groups(paren_string::String)::Vector{String}
    result = []
    count = 0
    group = ""
    for char in paren_string
        if char == '('
            count += 1
        elseif char == ')'
            count -= 1
        end
        group *= char
        if count == 0
            push!(result, group)
            group = ""
        end
    end
    return result
end
