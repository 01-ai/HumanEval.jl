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
    # Count the number of open and close parentheses in each string
    open_count_1, close_count_1 = count_parens(lst[1])
    open_count_2, close_count_2 = count_parens(lst[2])

    # If the number of open parentheses in the first string is less than the number of close parentheses in the second string,
    # it is impossible to make a good string.
    if open_count_1 < close_count_2
        return "No"
    end

    # If the number of close parentheses in the first string is less than the number of open parentheses in the second string,
    # it is impossible to make a good string.
    if close_count_1 < open_count_2
        return "No"
    end

    # If the number of open parentheses in the first string is greater than the number of close parentheses in the second string,
    # we can add the remaining open parentheses from the first string to the end of the second string.
    if open_count_1 > close_count_2
        lst[2] *= repeat(")", open_count_1 - close_count_2)
    end

    # If the number of close parentheses in the first string is greater than the number of open parentheses in the second string,
    # we can add the remaining close parentheses from the first string to the end of the second string.
    if close_count_1 > open_count_2
        lst[2] *= repeat("(", close_count_1 - open_count_2)
    end

    # Concatenate the two strings
    result = lst[1] * lst[2]

    # Check if the resulting string is good
    if is_good(result)
        return "Yes"
    else
        return "No"
    end
end

# Helper function to count the number of open and close parentheses in a string
function count_parens(s::String)
    open_count = count(c -> c == '(', s)
    close_count = count(c -> c == ')', s)
    return open_count, close_count
end

# Helper function to check if a string is good
function is_good(s::String)
    count = 0
    for c in s
        if c == '('
            count += 1
        elseif c == ')'
            count -= 1
            if count < 0
                return false
            end
        end
    end
    return count == 0
end
