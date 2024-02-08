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
    # Initialize counters for open and close parentheses
    open_count = 0
    close_count = 0
    
    # Count the total number of open and close parentheses in both strings
    for str in lst
        open_count += count(c -> c == '(', str)
        close_count += count(c -> c == ')', str)
    end
    
    # If the total counts are not equal, it's impossible to form a good string
    if open_count != close_count
        return "No"
    end
    
    # Check if concatenating in any order would not result in an imbalance
    # Start by checking if the first string has more close parentheses than open ones
    if count(c -> c == ')', lst[1]) > count(c -> c == '(', lst[1])
        return "No"
    end
    
    # If we pass all checks, it's possible to form a good string
    return "Yes"
end
