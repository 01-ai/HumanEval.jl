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
    count1 = 0
    count2 = 0
    for char in lst[1]
        if char == '('
            count1 += 1
        else
            count1 -= 1
        end
        if count1 < 0
            return "No"
        end
    end
    for char in lst[2]
        if char == '('
            count2 += 1
        else
            count2 -= 1
        end
        if count2 < 0
            return "No"
        end
    end
    if count1 + count2 == 0
        return "Yes"
    else
        return "No"
    end
end
