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
    # Remove any non-alphanumeric characters and convert to lowercase
    clean_text = lowercase(filter(isalnum, text))
    # Check if the cleaned text is the same forwards and backwards
    return clean_text == reverse(clean_text)
end
