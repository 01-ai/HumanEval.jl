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

    # Initialize a counter to keep track of the number of open parentheses
    open_paren_count = 0

    # Initialize a variable to store the current group
    current_group = ""

    # Iterate over each character in the input string
    for char in paren_string
        if char == '('
            # Increment the open parentheses count
            open_paren_count += 1

            # Add the character to the current group
            current_group *= char
        elseif char == ')'
            # Decrement the open parentheses count
            open_paren_count -= 1

            # Add the character to the current group
            current_group *= char

            # If the open parentheses count is zero, the current group is complete
            if open_paren_count == 0
                # Add the current group to the vector of groups
                push!(groups, current_group)

                # Reset the current group
                current_group = ""
            end
        end
    end

    # Return the vector of separate groups
    return groups
end
paren_string = "( ) (( )) (( )( ))"
groups = separate_paren_groups(paren_string)
println(groups)  # Output: ["()", "(())", "(()())"]
