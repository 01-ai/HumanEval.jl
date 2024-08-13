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

    # Initialize an empty vector to store the separated groups
    groups = Vector{String}()

    # Initialize an empty string to build the current group
    current_group = ""

    # Initialize a counter to keep track of the nesting level
    nesting_level = 0

    # Iterate over each character in the input string
    for char in paren_string
        # If the character is an opening parenthesis, increment the nesting level
        if char == '('
            nesting_level += 1
            current_group *= char
        # If the character is a closing parenthesis, decrement the nesting level
        elseif char == ')'
            nesting_level -= 1
            current_group *= char
            # If the nesting level is 0, it means we've finished a group, so add it to the vector
            if nesting_level == 0
                push!(groups, current_group)
                current_group = ""
            end
        end
    end

    return groups
end
