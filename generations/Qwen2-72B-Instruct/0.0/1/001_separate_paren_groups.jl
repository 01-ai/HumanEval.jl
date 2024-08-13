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
function separate_paren_groups(paren_string::String)
    # Remove spaces from the input string
    paren_string = replace(paren_string, " " => "")
    
    # Initialize variables
    stack = []
    result = []
    current_group = ""

    # Iterate over each character in the string
    for char in paren_string
        if char == '('
            # Push the index onto the stack
            push!(stack, length(current_group) + 1)
            # Add the character to the current group
            current_group *= char
        elseif char == ')'
            # Pop the index from the stack
            start_index = pop!(stack)
            # Add the character to the current group
            current_group *= char
            # If the stack is empty, a group is complete
            if isempty(stack)
                # Add the current group to the result and reset it
                push!(result, current_group)
                current_group = ""
            end
        end
    end

    # Return the result
    return result
end
