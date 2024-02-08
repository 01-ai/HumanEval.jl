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
    result = []
    group = ""
    for c in paren_string
        if c == '('
            push!(stack, c)
            group *= c
        elseif c == ')'
            pop!(stack)
            group *= c
            if isempty(stack)
                push!(result, group)
                group = ""
            end
        end
    end
    if !isempty(stack)
        group *= join(stack, "")
        push!(result, group)
    end
    return result
end
