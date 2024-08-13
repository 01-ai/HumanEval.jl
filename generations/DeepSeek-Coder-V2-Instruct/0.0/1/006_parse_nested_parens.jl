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
    groups = split(paren_string)
    
    # Initialize an array to store the maximum nesting levels for each group
    max_nesting_levels = Vector{Int}(undef, length(groups))
    
    for (i, group) in enumerate(groups)
        max_depth = 0
        current_depth = 0
        
        for char in group
            if char == '('
                current_depth += 1
                max_depth = max(max_depth, current_depth)
            elseif char == ')'
                current_depth -= 1
            end
        end
        
        max_nesting_levels[i] = max_depth
    end
    
    return max_nesting_levels
end
