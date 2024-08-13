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
    # Split the input string by spaces to get individual groups of parentheses
    groups = split(paren_string, " ")
    
    # Initialize an empty vector to store the maximum nesting levels
    max_nesting_levels = Int[]
    
    # Iterate over each group of parentheses
    for group in groups
        max_depth = 0
        current_depth = 0
        
        # Iterate over each character in the group
        for char in group
            if char == '('
                current_depth += 1
                if current_depth > max_depth
                    max_depth = current_depth
                end
            elseif char == ')'
                current_depth -= 1
            end
        end
        
        # Append the maximum depth of the current group to the result vector
        push!(max_nesting_levels, max_depth)
    end
    
    return max_nesting_levels
end
