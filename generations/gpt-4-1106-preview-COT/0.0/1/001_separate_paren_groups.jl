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
    groups = Vector{String}()
    current_group = ""
    nesting_level = 0

    for c in paren_string
        if c == '('
            nesting_level += 1
            current_group *= c
        elseif c == ')'
            nesting_level -= 1
            current_group *= c
            if nesting_level == 0
                push!(groups, current_group)
                current_group = ""
            end
        end
    end

    return groups
end
