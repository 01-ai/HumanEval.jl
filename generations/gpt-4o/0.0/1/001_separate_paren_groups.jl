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
    paren_string = replace(paren_string, " " => "")  # Remove all spaces
    groups = String[]
    current_group = ""
    balance = 0

    for char in paren_string
        current_group *= char
        if char == '('
            balance += 1
        elseif char == ')'
            balance -= 1
        end

        if balance == 0 && !isempty(current_group)
            push!(groups, current_group)
            current_group = ""
        end
    end

    return groups
end
