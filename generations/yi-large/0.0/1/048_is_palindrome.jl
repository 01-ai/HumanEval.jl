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
    # Remove spaces and convert to lowercase for a more general palindrome check
    clean_text = lowercase(replace(text, " " => ""))
    
    # Check if the text is the same as its reverse
    return clean_text == reverse(clean_text)
end

# Test cases
println(is_palindrome(""))             # true
println(is_palindrome("aba"))          # true
println(is_palindrome("aaaaa"))        # true
println(is_palindrome("zbcd"))         # false

# Note: The doctests provided are not automatically verified in this snippet.
