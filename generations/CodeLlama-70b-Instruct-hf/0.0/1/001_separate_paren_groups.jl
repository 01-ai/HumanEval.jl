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
    # Initialize a stack to keep track of the parentheses
    stack = Char[]
    # Initialize the start index of a group
    start_idx = 1

    # Iterate over the characters in the input string
    for (idx, char) in enumerate(paren_string)
        # If the character is an opening parenthesis, push it onto the stack
        if char == '('
            push!(stack, char)
        # If the character is a closing parenthesis
        elseif char == ')'
            # If the stack is empty, return an error
            if isempty(stack)
                error("Unbalanced parentheses")
            end
            # Pop the top element from the stack
            pop!(stack)
            # If the stack is empty after popping, we have found a complete group
            if isempty(stack)
                # Append the group to the list of groups
                push!(groups, paren_string[start_idx:idx])
                # Update the start index for the next group
                start_idx = idx + 1
            end
        end
    end

    # If the stack is not empty after iterating over the string, return an error
    if !isempty(stack)
        error("Unbalanced parentheses")
    end

    return groups
end
