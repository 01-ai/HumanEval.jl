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
    # Check if the list contains only "(" and ")" characters
    if any(c -> c ∉ '(':')', lst)
        return "No"
    end

    # Count the number of open and close parentheses in each string
    open_counts = count(c -> c == '(', lst)
    close_counts = count(c -> c == ')', lst)

    # Check if the number of open and close parentheses are equal
    if open_counts == close_counts
        # Create a new string by concatenating the strings in the list
        str = join(lst)

        # Check if the resulting string is good (balanced)
        if all(c -> c == '(' || c == ')', str)
            return "Yes"
        end
    end

    return "No"
end
