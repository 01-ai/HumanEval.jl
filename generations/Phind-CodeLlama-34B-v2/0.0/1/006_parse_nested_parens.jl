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
    groups = split(paren_string)
    nesting_levels = Int[]

    for group in groups
        current_level = 0
        max_level = 0

        for char in group
            if char == '('
                current_level += 1
                max_level = max(max_level, current_level)
            elseif char == ')'
                current_level -= 1
            end
        end

        push!(nesting_levels, max_level)
    end

    return nesting_levels
end
