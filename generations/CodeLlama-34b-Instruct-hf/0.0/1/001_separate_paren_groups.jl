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
    # Initialize an empty list to store the separated groups
    groups = String[]

    # Iterate over the characters in the input string
    for i in 1:length(paren_string)
        # If the current character is an opening parenthesis, start a new group
        if paren_string[i] == '('
            # Add the opening parenthesis to the current group
            push!(groups, paren_string[i])

            # Iterate over the remaining characters in the input string
            for j in i+1:length(paren_string)
                # If the current character is a closing parenthesis, end the current group
                if paren_string[j] == ')'
                    # Add the closing parenthesis to the current group
                    push!(groups, paren_string[j])

                    # If the current group is balanced, add it to the list of separated groups
                    if length(groups) % 2 == 0
                        push!(groups, join(groups, ""))
                    end

                    # Reset the current group
                    groups = String[]
                end
            end
        end
    end

    # Return the list of separated groups
    return groups
end
