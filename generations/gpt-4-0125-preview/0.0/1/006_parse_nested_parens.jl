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
    # Split the input string into groups based on spaces
    groups = split(paren_string)
    # Initialize an empty vector to store the maximum depth of each group
    max_depths = Int[]

    # Iterate through each group
    for group in groups
        # Initialize counters for current depth and maximum depth
        current_depth = 0
        max_depth = 0

        # Iterate through each character in the group
        for char in group
            if char == '('
                # Increase current depth for an opening parenthesis
                current_depth += 1
                # Update maximum depth if current depth is greater
                max_depth = max(max_depth, current_depth)
            elseif char == ')'
                # Decrease current depth for a closing parenthesis
                current_depth -= 1
            end
        end

        # Append the maximum depth of the current group to the result vector
        push!(max_depths, max_depth)
    end

    return max_depths
end
