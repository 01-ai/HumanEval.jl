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
    open_parens = count(c -> c == '(', lst[1]) + count(c -> c == '(', lst[2])
    close_parens = count(c -> c == ')', lst[1]) + count(c -> c == ')', lst[2])

    if open_parens == close_parens
        return "Yes"
    else
        return "No"
    end
end
