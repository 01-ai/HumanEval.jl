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
    # Count the number of open parentheses in the first string
    open_count1 = count(x -> x == "(", lst[1])
    # Count the number of close parentheses in the first string
    close_count1 = count(x -> x == ")", lst[1])

    # Count the number of open parentheses in the second string
    open_count2 = count(x -> x == "(", lst[2])
    # Count the number of close parentheses in the second string
    close_count2 = count(x -> x == ")", lst[2])

    # Check if the sum of open parentheses in both strings is equal to the sum of close parentheses in both strings
    if open_count1 + open_count2 == close_count1 + close_count2
        return "Yes"
    else
        return "No"
    end
end
