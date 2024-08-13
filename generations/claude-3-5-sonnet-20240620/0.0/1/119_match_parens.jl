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
    # Combine both strings
    combined = join(lst)
    
    # Count open and close parentheses
    open_count = count('(', combined)
    close_count = count(')', combined)
    
    # If the counts don't match, it's impossible to balance
    if open_count != close_count
        return "No"
    end
    
    # Check if it's possible to arrange them correctly
    open_available = open_count
    close_available = close_count
    open_needed = 0
    
    for char in combined
        if char == '('
            open_available -= 1
            open_needed += 1
        else  # char == ')'
            close_available -= 1
            if open_needed > 0
                open_needed -= 1
            else
                if open_available > 0
                    open_available -= 1
                    open_needed += 1
                else
                    return "No"
                end
            end
        end
    end
    
    return "Yes"
end
