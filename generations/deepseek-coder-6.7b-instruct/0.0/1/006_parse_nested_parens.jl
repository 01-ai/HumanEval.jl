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
    groups = split(paren_string, " ")
    max_nesting_levels = Int[]
    for group in groups
        count = 0
        max_count = 0
        for char in group
            if char == '('
                count += 1
                if count > max_count
                    max_count = count
                end
            elseif char == ')'
                count -= 1
            end
        end
        push(max_nesting_levels, max_count)
    end
    return max_nesting_levels
end
