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
    stack = Int[]
    max_level = 0
    levels = Int[]

    for c in paren_string
        if c == '('
            push!(stack, 1)
            max_level += 1
        elseif c == ')'
            pop!(stack)
            if isempty(stack)
                push!(levels, max_level)
                max_level = 0
            end
        elseif c == ' ' && !isempty(stack)
            error("Invalid input: unbalanced parentheses")
        end
    end

    if !isempty(stack)
        error("Invalid input: unbalanced parentheses")
    end

    return levels
end
