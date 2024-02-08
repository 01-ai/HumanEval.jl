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
    # Step 1: Split the input string by spaces
    groups = split(paren_string)
    
    # Step 2: Initialize an output vector
    max_depths = Int[]
    
    # Step 3: Iterate through each group
    for group in groups
        current_depth = 0
        max_depth = 0
        for char in group
            if char == '('
                current_depth += 1
                max_depth = max(max_depth, current_depth)
            elseif char == ')'
                current_depth -= 1
            end
        end
        push!(max_depths, max_depth)
    end
    
    # Step 4: Return the output vector
    return max_depths
end
