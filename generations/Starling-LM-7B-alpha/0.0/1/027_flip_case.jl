"""
    flip_case(s::String)::String

For a given string, flip lowercase characters to uppercase and uppercase to lowercase.

# Examples

```jldoctest
julia> flip_case("Hello")
"hELLO"
```
"""
 function flip_case(s::String)::String
    lower_case_chars = 'abcdefghijklmnopqrstuvwxyz'
    upper_case_chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

    flipped_chars = ""

    for char in s
        if char in lower_case_chars
            flipped_chars *= upper(char)
        elseif char in upper_case_chars
            flipped_chars *= lower(char)
        else
            flipped_chars *= char
        end
    end

    return flipped_chars
end
