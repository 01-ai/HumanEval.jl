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
    result = Vector{String}()
    stack = Vector{Char}()
    current_group = ""

    for char in paren_string
        if char == ' '
            continue  # Ignore spaces
        elseif char == '('
            stack.push(char)
            current_group *= char
        elseif char == ')'
            if !isempty(stack) && stack[end] == '('
                stack.pop()
                current_group *= char
                if isempty(stack)
                    push!(result, current_group)
                    current_group = ""
                end
            else
                error("Unbalanced parentheses")
            end
        end
    end

    return result
end
