"""
    parse_nested_parens(paren_string::String)::Vector{Int}

Input to this function is a string represented multiple groups for nested
parentheses separated by spaces. For each of the group, output the deepest level
of nesting of parentheses. E.g. `(()())` has maximum two levels of nesting while
`((()))` has three.

# Examples

```jldoctest
julia> parse_nested_parens("(()()) ((())) () ((())()())")
4-element Vector{Int64}:
 2
 3
 1
 3
```
"""
function parse_nested_parens(paren_string::String)::Vector{Int}
    # Initialize an empty vector to store the levels of nesting
    nested_levels = Vector{Int}()

    # Loop over the string, character by character
    for i in 1:length(paren_string)
        # If the current character is an opening parenthesis '('
        if paren_string[i] == '('
            # Push a 1 to the vector to indicate the start of a new level
            push!(nested_levels, 1)
        # If the current character is a closing parenthesis ')'
        elseif paren_string[i] == ')'
            # Pop the last element from the vector to decrement the level
            pop!(nested_levels)
        end
    end

    # Convert the vector to an array and return it
    return nested_levels
end
