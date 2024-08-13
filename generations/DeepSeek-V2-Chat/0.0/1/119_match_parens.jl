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
    count_open1 = count(c -> c == '(', lst[1])
    count_close1 = count(c -> c == ')', lst[1])
    count_open2 = count(c -> c == '(', lst[2])
    count_close2 = count(c -> c == ')', lst[2])
    
    # Total open and close parentheses
    total_open = count_open1 + count_open2
    total_close = count_close1 + count_close2
    
    # Check if the total number of open parentheses equals the total number of close parentheses
    if total_open != total_close
        return "No"
    end
    
    # Check if the number of unmatched open parentheses does not exceed the number of open parentheses in the first string
    if count_open1 >= count_close2
        return "Yes"
    else
        return "No"
    end
end

# Examples
println(match_parens(["()(", ")"]))  # "Yes"
println(match_parens([")", ")"]))    # "No"
