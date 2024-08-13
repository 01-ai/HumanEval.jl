"""
    is_palindrome(text::String)::Bool

Checks if given string is a palindrome

# Examples

```jldoctest
julia> is_palindrome("")
true

julia> is_palindrome("aba")
true

julia> is_palindrome("aaaaa")
true

julia> is_palindrome("zbcd")
false
```
"""
function is_palindrome(text::String)::Bool
    # Remove any whitespace and convert to lowercase for uniformity
    text = lowercase(replace(text, r"\s+", ""))
    # Compare the text to its reverse
    return text == reverse(text)
end
