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
    # Split the input string into individual groups
    groups = split(paren_string, " ")

    # Initialize a vector to hold the results
    nesting_levels = Int[]

    # Process each group
    for group in groups
        # Initialize the current level and maximum level
        current_level = 0
        max_level = 0

        # Iterate over each character in the group
        for char in group
            # If the character is an opening parenthesis, increase the level
            if char == '('
                current_level += 1
            # If the character is a closing parenthesis, decrease the level
            elseif char == ')'
                current_level -= 1
            end
            # Update the maximum level if necessary
            max_level = max(max_level, current_level)
        end
        # Push the maximum level for the group to the results vector
        push!(nesting_levels, max_level)
    end

    return nesting_levels
end

# Example usage
# julia> parse_nested_parens("(()()) ((())) () ((())()())")
# 4-element Vector{Int64}:
#  2
#  3
#  1
#  3
