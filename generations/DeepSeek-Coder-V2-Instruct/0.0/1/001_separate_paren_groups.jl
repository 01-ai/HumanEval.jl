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
    # Remove spaces from the input string
    paren_string = replace(paren_string, " " => "")
    
    result = Vector{String}()
    stack = 0
    start_index = 0
    
    for (i, char) in enumerate(paren_string)
        if char == '('
            if stack == 0
                start_index = i
            end
            stack += 1
        elseif char == ')'
            stack -= 1
            if stack == 0
                push!(result, paren_string[start_index:i])
            end
        end
    end
    
    return result
end
