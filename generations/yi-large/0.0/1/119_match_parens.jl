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
    # Concatenate the strings
    s = lst[1] * lst[2]
    
    # Count the number of open and close parentheses
    open_count = count(c -> c == '(', s)
    close_count = count(c -> c == ')', s)
    
    # If the counts are equal, the strings can be matched
    if open_count == close_count
        return "Yes"
    else
        return "No"
    end
end

# Examples
println(match_parens(["()(", ")"])) # Yes
println(match_parens([")", ")"])) # No
