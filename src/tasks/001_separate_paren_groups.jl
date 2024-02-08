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
    result = []
    current_string = []
    current_depth = 0

    for c in paren_string
        if c == '('
            current_depth += 1
            push!(current_string, c)
        elseif c == ')'
            current_depth -= 1
            push!(current_string, c)

            if current_depth == 0
                push!(result, join(current_string))
                empty!(current_string)
            end
        end
    end

    return result
end
