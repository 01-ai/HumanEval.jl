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
    # Helper function to count the balance of parentheses
    function count_balance(s::String)::Int
        balance = 0
        for char in s
            if char == '('
                balance += 1
            else
                balance -= 1
            end
        end
        return balance
    end

    # Calculate the balance for both strings
    balance1 = count_balance(lst[1])
    balance2 = count_balance(lst[2])

    # Check if we can concatenate the strings in some order to make a good string
    if balance1 + balance2 == 0 && balance1 >= 0 && balance2 >= 0
        return "Yes"
    elseif balance1 - balance2 == 0 && balance1 >= 0 && balance2 <= 0
        return "Yes"
    elseif balance2 - balance1 == 0 && balance2 >= 0 && balance1 <= 0
        return "Yes"
    else
        return "No"
    end
end
