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

    # Initialize variables
    result = Vector{String}()
    current_group = ""
    balance = 0

    # Iterate through each character in the string
    for char in paren_string
        current_group *= char
        if char == '('
            balance += 1
        elseif char == ')'
            balance -= 1
        end

        # If balance is zero, we have a complete group
        if balance == 0 && !isempty(current_group)
            push!(result, current_group)
            current_group = ""
        end
    end

    return result
end

# Example usage
println(separate_paren_groups("( ) (( )) (( )( ))"))
