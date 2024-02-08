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
    # Step 1: Initialize variables
    separated_groups = Vector{String}()
    current_group = ""
    depth = 0

    # Step 2: Preprocess input
    clean_string = replace(paren_string, " " => "")

    # Step 3: Iterate through characters
    for char in clean_string
        if char == '('
            # Step 3a: Open parenthesis
            depth += 1
            current_group *= char
        elseif char == ')'
            # Step 3b: Close parenthesis
            depth -= 1
            current_group *= char
            if depth == 0
                push!(separated_groups, current_group)
                current_group = ""
            end
        end
    end

    # Step 4: Return result
    return separated_groups
end
