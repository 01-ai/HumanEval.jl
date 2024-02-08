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
    groups = []
    current_group = ""
    open_braces = 0

    for char in paren_string
        if char == '('
            open_braces += 1
        elseif char == ')'
            open_braces -= 1
        end

        current_group *= char

        if open_braces == 0
            push!(groups, current_group)
            current_group = ""
        end
    end

    return groups
end
