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
    # Remove all spaces from the input string
    clean_string = replace(paren_string, " " => "")
    
    # Initialize variables to store the results and track the current depth of parentheses
    results = Vector{String}()
    current_group = []
    depth = 0
    
    # Iterate over each character in the cleaned string
    for char in clean_string
        if char == '('
            # Increase the depth for an opening parenthesis
            depth += 1
            push!(current_group, char)
        elseif char == ')'
            # Append the closing parenthesis and decrease the depth
            push!(current_group, char)
            depth -= 1
            
            # If depth reaches zero, we have a complete group
            if depth == 0
                push!(results, join(current_group))
                current_group = []
            end
        end
    end
    
    return results
end
