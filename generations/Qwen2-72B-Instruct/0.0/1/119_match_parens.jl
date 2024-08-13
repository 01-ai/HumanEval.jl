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
    open_count, close_count = 0, 0

    # Count open and close parentheses in both strings
    for str in lst
        for ch in str
            if ch == '('
                open_count += 1
            elseif ch == ')'
                close_count += 1
            end
        end
    end

    # Check if the total number of open and close parentheses are equal
    if open_count != close_count
        return "No"
    end

    # Check if the first string has more open parentheses than close ones
    # and the second string has more close parentheses than open ones
    first_str_diff = count(c -> c == '(', lst[1]) - count(c -> c == ')', lst[1])
    second_str_diff = count(c -> c == '(', lst[2]) - count(c -> c == ')', lst[2])

    if first_str_diff <= 0 && second_str_diff >= 0
        return "Yes"
    elseif first_str_diff >= 0 && second_str_diff <= 0
        return "Yes"
    else
        return "No"
    end
end
