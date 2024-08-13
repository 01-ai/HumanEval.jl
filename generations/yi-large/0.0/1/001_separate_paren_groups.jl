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
    
    # Initialize a stack and a result vector
    stack = []
    groups = []
    group_start = 1
    
    for (i, char) in enumerate(clean_string)
        if char == '('
            # If this is the first open parenthesis, mark the start of a group
            if isempty(stack)
                group_start = i
            end
            push!(stack, char)
        elseif char == ')'
            pop!(stack)
            # If the stack is empty after popping, we've closed a group
            if isempty(stack)
                push!(groups, clean_string[group_start:i])
            end
        end
    end
    
    # Return the vector of parenthesis groups
    return groups
end

# Example usage
julia> separate_paren_groups("( ) (( )) (( )( ))")
3-element Vector{String}:
 "()"
 "(())"
 "(()())"