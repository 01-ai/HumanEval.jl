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
    result = String[]
    current_group = ""
    depth = 0
    
    for char in paren_string
        if char == '('
            depth += 1
            current_group *= char
        elseif char == ')'
            depth -= 1
            current_group *= char
            
            if depth == 0
                push!(result, current_group)
                current_group = ""
            end
        elseif !isspace(char)
            current_group *= char
        end
    end
    
    return result
end
