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
    left = 0
    right = 0
    
    for str in lst
        for c in str
            if c == '('
                left += 1
            elseif c == ')'
                if left > 0
                    left -= 1
                else
                    right += 1
                end
            end
        end
    end
    
    if left == right
        return "Yes"
    else
        return "No"
    end
end
