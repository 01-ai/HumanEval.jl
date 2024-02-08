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
    current_group = ""

    for char in paren_string
        if char == '('
            push!(stack, current_group)
            current_group = ""
        elseif char == ')'
            if !isempty(current_group)
                current_group *= char
            else
                pop!(stack)
                current_group = ""
            end
        else
            current_group *= char
        end
    end

    if !isempty(current_group)
        push!(stack, current_group)
    end

    return stack
end
