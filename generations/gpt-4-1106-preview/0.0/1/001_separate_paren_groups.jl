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
    
    # Initialize an empty vector to store the separate groups
    groups = Vector{String}()
    
    # Initialize counters for the current group and the level of nesting
    current_group = ""
    nesting_level = 0
    
    # Iterate over each character in the string
    for c in paren_string
        # If we encounter an opening parenthesis, increase the nesting level
        if c == '('
            nesting_level += 1
            current_group *= c
        # If we encounter a closing parenthesis, decrease the nesting level
        elseif c == ')'
            nesting_level -= 1
            current_group *= c
            # If the nesting level reaches zero, we have a complete group
            if nesting_level == 0
                push!(groups, current_group)
                current_group = ""
            end
        end
    end
    
    return groups
end

# Example usage
println(separate_paren_groups("( ) (( )) (( )( ))"))
