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

    # Initialize an empty vector to store the groups
    groups = Vector{String}()

    # Initialize an empty string to store the current group
    current_group = ""

    # Initialize a counter for the number of open parentheses
    open_parentheses = 0

    # Iterate over the characters in the input string
    for char in paren_string
        if char == '('
            # If the character is an open parenthesis, increment the counter
            open_parentheses += 1
        elseif char == ')'
            # If the character is a close parenthesis, decrement the counter
            open_parentheses -= 1
        end

        # Add the character to the current group
        current_group *= char

        # If there are no open parentheses, it means the current group is complete
        if open_parentheses == 0
            # Add the current group to the list of groups
            push!(groups, current_group)

            # Reset the current group
            current_group = ""
        end
    end

    # Return the list of groups
    return groups
end
