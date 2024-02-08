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
    clean_string = replace(paren_string, " " => "")
    
    # Initialize variables
    groups = String[]  # To store the separated groups
    current_group = []  # To build the current group
    balance = 0  # To keep track of the balance of parentheses
    
    # Iterate through each character in the cleaned string
    for char in clean_string
        # Add the character to the current group
        push!(current_group, char)
        
        # Adjust the balance based on the character
        if char == '('
            balance += 1
        elseif char == ')'
            balance -= 1
        end
        
        # If the balance is zero, we have a complete group
        if balance == 0
            push!(groups, join(current_group))
            current_group = []  # Reset the current group for the next one
        end
    end
    
    return groups
end
