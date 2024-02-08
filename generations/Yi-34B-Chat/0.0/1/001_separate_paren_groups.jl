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
    # Initialize an empty vector to store the separated paren groups
    groups = Vector{String}()

    # Keep track of the current opening and closing parentheses positions
    open_stack = Vector{Int}()
    close_stack = Vector{Int}()

    # Loop through each character in the input string
    for i in 1:length(paren_string)
        # If the current character is an opening parenthesis, push its position
        # to the open_stack
        if paren_string[i] == '('
            push!(open_stack, i)
        # If the current character is a closing parenthesis, pop an opening
        # parenthesis from the open_stack and push the closing parenthesis
        # position to the close_stack
        elseif paren_string[i] == ')'
            while !isempty(open_stack) && open_stack[end] != close_stack[end]
                # Pop an opening parenthesis from the open_stack
                pop!(open_stack)
                # Pop a closing parenthesis from the close_stack
                pop!(close_stack)
            end
            # If the closing parenthesis is not matched, we have an error
            if isempty(open_stack)
                error("Unmatched closing parenthesis at position $i")
            end
            # Pop the opening parenthesis from the open_stack
            pop!(open_stack)
            # Push the closing parenthesis position to the close_stack
            push!(close_stack, i)
        end
    end

    # While there are opening parentheses left in the open_stack, we have an
    # unmatched opening parenthesis, so we error out
    if !isempty(open_stack)
        error("Unmatched opening parentheses")
    end

    # Now, we have a list of balanced parentheses groups in the close_stack
    # Loop through the close_stack and construct the separate paren groups
    for i in 1:length(close_stack) - 1
        # Get the range of the current paren group
        start_index = open_stack[i]
        end_index = close_stack[i]

        # Add the current paren group to the result vector
        push!(groups, paren_string[start_index+1:end_index-1])
    end

    # Return the list of separated paren groups
    return groups
end
