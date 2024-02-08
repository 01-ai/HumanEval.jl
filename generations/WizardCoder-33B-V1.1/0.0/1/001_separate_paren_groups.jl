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
    open_count = 0
    start_index = 0
    for (i, char) in enumerate(paren_string)
        if char == '('
            if open_count == 0
                start_index = i
            end
            open_count += 1
        elseif char == ')'
            open_count -= 1
            if open_count == 0
                pushfirst(groups, paren_string[start_index:i])
            end
        end
    end
    return groups
end
