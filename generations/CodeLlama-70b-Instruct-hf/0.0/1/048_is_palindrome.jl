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
    # Remove all non-alphanumeric characters and convert to lowercase
    clean_text = replace(lowercase(text), r"[^a-z0-9]" => "")

    # Check if the string is a palindrome
    return clean_text == reverse(clean_text)
end
