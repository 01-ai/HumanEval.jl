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
    function check(s)
        val = 0
        for i in s
            if i == '('
                val = val + 1
            else
                val = val - 1
            end
            if val < 0
                return false
            end
        end
        val == 0
    end

    S1 = lst[begin] * lst[end]
    S2 = lst[end] * lst[begin]
    check(S1) || check(S2) ? "Yes" : "No"
end
