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
    return text == reverse(text)
end
println(is_palindrome("")) # true
println(is_palindrome("aba")) # true
println(is_palindrome("aaaaa")) # true
println(is_palindrome("zbcd")) # false
