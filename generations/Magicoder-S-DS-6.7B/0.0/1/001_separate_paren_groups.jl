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
    paren_string = replace(paren_string, " " => "")
    groups = String[]
    stack = Char[]
    current_group = ""

    for c in paren_string
        if c == '('
            pushfirst(stack, c)
            current_group *= c
        elseif c == ')'
            popfirst(stack)
            current_group *= c
            if isempty(stack)
                pushfirst(groups, current_group)
                current_group = ""
            end
        end
    end

    return groups
end
