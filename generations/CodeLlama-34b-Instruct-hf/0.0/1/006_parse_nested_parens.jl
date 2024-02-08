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
    # Initialize a stack to keep track of the nesting level
    stack = []
    # Initialize the output vector
    output = Int[]

    # Iterate over the characters in the input string
    for c in paren_string
        # If the current character is an opening parenthesis, push it onto the stack
        if c == '('
            push!(stack, c)
        # If the current character is a closing parenthesis, pop the top element from the stack
        elseif c == ')'
            if isempty(stack)
                # If the stack is empty, there is no matching opening parenthesis, so return an error
                return []
            end
            # Pop the top element from the stack and add it to the output vector
            push!(output, pop!(stack))
        end
    end

    # If the stack is not empty, there are unmatched opening parentheses, so return an error
    if !isempty(stack)
        return []
    end

    # Return the output vector
    return output
end
