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
    # Check if the input list has exactly two strings
    if length(lst) != 2
        error("Input list must have exactly two strings")
    end

    # Initialize counters for open and close parentheses
    open_count1 = 0
    close_count1 = 0
    open_count2 = 0
    close_count2 = 0

    # Count open and close parentheses in each string
    for char in lst[1]
        if char == '('
            open_count1 += 1
        elseif char == ')'
            close_count1 += 1
        end
    end

    for char in lst[2]
        if char == '('
            open_count2 += 1
        elseif char == ')'
            close_count2 += 1
        end
    end

    # Check if it's possible to concatenate the strings to get a good string
    if open_count1 == close_count2 && open_count2 == close_count1
        return "Yes"
    elseif open_count1 + open_count2 == close_count1 + close_count2
        # Check if one string can be appended to the other to get a good string
        if open_count1 >= close_count1 && open_count2 >= close_count2
            return "Yes"
        elseif open_count1 <= close_count1 && open_count2 <= close_count2
            return "Yes"
        end
    end

    return "No"
end
