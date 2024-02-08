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
    function parse_paren_group(s)
        depth = 0
        max_depth = 0
        for c in s
            if c == '('
                depth += 1
                max_depth = max(depth, max_depth)
            else
                depth -= 1
            end
        end

        return max_depth
    end

    return [parse_paren_group(x) for x in split(paren_string, keepempty = false)]
end
