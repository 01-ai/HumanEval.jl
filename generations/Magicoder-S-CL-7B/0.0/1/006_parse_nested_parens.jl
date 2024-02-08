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
    result = []
    for group in split(paren_string, ' ')
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
        push!(result, max_depth)
    end
    return result
end
