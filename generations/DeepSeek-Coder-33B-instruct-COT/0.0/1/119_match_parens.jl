"""
    match_parens(lst::Vector{String})::String

You are given a list of two strings, both strings consist of open parentheses
"(" or close parentheses ")" only. Your job is to check if it is possible to
concatenate the two strings in some order, that the resulting string will be
good. A string S is considered to be good if and only if all parentheses in S
are balanced. For example: the string "(())()" is good, while the string "())"
is not. Return "Yes" if there"s a way to make a good string, and return "No"
otherwise.

# Examples

```jldoctest
julia> match_parens(["()(", ")"])
"Yes"

julia> match_parens([")", ")"])
"No"
```
"""
function match_parens(lst::Vector{String})::String
    s1, s2 = lst
    if is_balanced(s1) && is_balanced(s2)
        return "Yes"
    else
        return "No"
    end
end

function is_balanced(s::String)::Bool
    stack = []
    for c in s
        if c == '('
            pushfirst(stack, c)
        elseif c == ')'
            if isempty(stack)
                return false
            else
                popfirst(stack)
            end
        end
    end
    return isempty(stack)
end
