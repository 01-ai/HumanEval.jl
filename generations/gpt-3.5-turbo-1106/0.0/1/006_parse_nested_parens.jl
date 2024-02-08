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
    depths = []
    for group in split(paren_string, " ")
        depth = 0
        max_depth = 0
        for char in group
            if char == '('
                depth += 1
                max_depth = max(max_depth, depth)
            elseif char == ')'
                depth -= 1
            end
        end
        push!(depths, max_depth)
    end
    return depths
end