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
    paren_string = replace(paren_string, " " => "")  # remove spaces
    groups = String[]
    stack = Int[]
    start = 1
    for (i, c) in enumerate(paren_string)
        if c == '('
            pushfirst(stack, i)
        elseif c == ')'
            start = popfirst(stack) + 1
            pushfirst(groups, paren_string[start:i])
        end
    end
    return groups
end
