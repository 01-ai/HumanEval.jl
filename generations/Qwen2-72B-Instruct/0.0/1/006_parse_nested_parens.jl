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
function parse_nested_parens(paren_string::String)
    # Split the input string by spaces to separate groups of parentheses
    groups = split(paren_string)
    depth_vector = []

    for group in groups
        # Initialize current depth and max depth for this group
        current_depth = 0
        max_depth = 0

        # Iterate over each character in the group
        for char in group
            if char == '('
                # Increase depth if an opening parenthesis is found
                current_depth += 1
                # Update max depth if current depth is greater
                max_depth = max(max_depth, current_depth)
            elseif char == ')'
                # Decrease depth if a closing parenthesis is found
                current_depth -= 1
            end
        end

        # Append the max depth of the current group to the depth vector
        push!(depth_vector, max_depth)
    end

    return depth_vector
end
