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
    stack = Int[]
    result = String[]
    current_group = ""

    for char in replace(paren_string, " " => "")
        if char == '('
            push!(stack, length(current_group) + 1)
            current_group *= char
        elseif char == ')'
            if !isempty(stack)
                start_index = stack.popfirst!
                push!(result, current_group[start_index:end])
                current_group = current_group[1:start_index-1]
            else
                error("Unbalanced parentheses")
            end
        else
            current_group *= char
        end
    end

    if !isempty(stack)
        error("Unbalanced parentheses")
    end

    if !isempty(current_group)
        push!(result, current_group)
    end

    return result
end
