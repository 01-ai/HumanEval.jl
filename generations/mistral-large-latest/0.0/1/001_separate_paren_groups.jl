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
    result = String[]
    open_count = 0
    start = 0
    for (i, c) in enumerate(paren_string)
        if c == '('
            open_count += 1
        elseif c == ')'
            open_count -= 1
            if open_count == 0
                push!(result, paren_string[start:i])
                start = i + 1
            end
        end
    end
    return result
end
