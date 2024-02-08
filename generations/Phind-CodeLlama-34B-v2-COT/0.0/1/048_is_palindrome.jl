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
    # Convert the string to lowercase
    text = lowercase(text)

    # Remove any non-alphanumeric characters
    text = replace(text, r"[^a-z0-9]" => "")

    # Compare the string with its reverse
    return text == reverse(text)
end
