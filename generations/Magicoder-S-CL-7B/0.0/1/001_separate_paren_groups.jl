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
    stack = []
    groups = []
    start = 1
    for (i, char) in enumerate(paren_string)
        if char == '('
            if isempty(stack)
                start = i
            end
            push!(stack, char)
        elseif char == ')'
            pop!(stack)
            if isempty(stack)
                push!(groups, paren_string[start:i])
            end
        end
    end
    return groups
end
