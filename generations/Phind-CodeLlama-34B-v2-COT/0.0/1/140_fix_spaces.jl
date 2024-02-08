"""
    fix_spaces(s::String)::String

Given a string text, replace all spaces in it with underscores, and if a string
has two or more consecutive spaces, then replace all consecutive spaces with -

# Examples

```jldoctest
julia> fix_spaces("Example")
"Example"

julia> fix_spaces("Example 1")
"Example_1"

julia> fix_spaces(" Example 2")
"_Example_2"

julia> fix_spaces(" Example   3")
"_Example-3"
```
"""
function fix_spaces(s::String)::String
    result = ""
    i = 1
    while i <= length(s)
        if s[i] == ' '
            result *= '_'
            while i < length(s) && s[i+1] == ' '
                i += 1
            end
            if i < length(s) && s[i+1] != ' '
                result *= '-'
            end
        else
            result *= s[i]
        end
        i += 1
    end
    return result
end
