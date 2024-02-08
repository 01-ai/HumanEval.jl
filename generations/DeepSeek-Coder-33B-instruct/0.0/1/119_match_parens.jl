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
    function is_balanced(s::String)
        count = 0
        for c in s
            if c == '('
                count += 1
            elseif c == ')'
                count -= 1
            end
            if count < 0
                return false
            end
        end
        return count == 0
    end

    for perm in Iterators.product(lst, lst)
        if is_balanced(perm[1] * perm[2])
            return "Yes"
        end
    end
    return "No"
end
println(match_parens(["()(", ")"]))  # "Yes"
println(match_parens([")", ")"]))  # "No"