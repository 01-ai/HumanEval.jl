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
    # Step 2: Normalize the input string
    normalized_text = lowercase(filter(isalnum, text))
    
    # Step 3 and 4: Check if the string is equal to its reverse
    return normalized_text == reverse(normalized_text)
end
println(is_palindrome(""))        # true
println(is_palindrome("aba"))     # true
println(is_palindrome("aaaaa"))   # true
println(is_palindrome("zbcd"))    # false
