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
    str1, str2 = lst[1], lst[2]
    
    # Count the number of opening and closing parentheses in both strings
    open_count1 = count(c -> c == '(', str1)
    close_count1 = count(c -> c == ')', str1)
    open_count2 = count(c -> c == '(', str2)
    close_count2 = count(c -> c == ')', str2)
    
    # Total counts of opening and closing parentheses
    total_open = open_count1 + open_count2
    total_close = close_count1 + close_count2
    
    # Check if the total number of opening and closing parentheses are equal
    if total_open == total_close
        return "Yes"
    else
        return "No"
    end
end

# Examples
println(match_parens(["()(", ")"]))  # Should print "Yes"
println(match_parens([")", ")"]))    # Should print "No"
