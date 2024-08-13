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
    # Extract the two strings from the list
    s1, s2 = lst[1], lst[2]

    # Function to check if a string is balanced
    function is_balanced(s::String)
        balance = 0
        for char in s
            if char == '('
                balance += 1
            elseif char == ')'
                balance -= 1
            end
            if balance < 0
                return false
            end
        end
        return balance == 0
    end

    # Check both possible concatenations
    if is_balanced(s1 * s2) || is_balanced(s2 * s1)
        return "Yes"
    else
        return "No"
    end
end
