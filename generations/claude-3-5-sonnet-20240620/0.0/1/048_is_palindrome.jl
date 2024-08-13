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
    # Remove non-alphanumeric characters and convert to lowercase
    cleaned_text = lowercase(filter(isalnum, text))
    
    # Compare the string with its reverse
    return cleaned_text == reverse(cleaned_text)
end
