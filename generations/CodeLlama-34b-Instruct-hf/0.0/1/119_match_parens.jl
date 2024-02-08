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
    # Initialize a counter to keep track of the number of open parentheses
    open_parens = 0

    # Iterate over the strings in the list
    for str in lst
        # Iterate over the characters in the string
        for c in str
            # If the character is an open parenthesis, increment the counter
            if c == '('
                open_parens += 1
            # If the character is a close parenthesis, decrement the counter
            elseif c == ')'
                open_parens -= 1
            end
        end
    end

    # If the counter is zero, the strings are balanced and we can return "Yes"
    if open_parens == 0
        return "Yes"
    else
        return "No"
    end
end
