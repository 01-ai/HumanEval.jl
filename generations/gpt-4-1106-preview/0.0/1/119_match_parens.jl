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
    # Concatenate the strings in both possible orders
    str1 = lst[1] * lst[2]
    str2 = lst[2] * lst[1]
    
    # Function to check if a string has balanced parentheses
    function is_balanced(s::String)::Bool
        balance = 0
        for c in s
            if c == '('
                balance += 1
            elseif c == ')'
                balance -= 1
            end
            # If balance goes negative, parentheses are not balanced
            if balance < 0
                return false
            end
        end
        return balance == 0
    end
    
    # Check if either concatenated string is balanced
    if is_balanced(str1) || is_balanced(str2)
        return "Yes"
    else
        return "No"
    end
end

# Examples
println(match_parens(["()(", ")"])) # Should print "Yes"
println(match_parens([")", ")"]))   # Should print "No"
