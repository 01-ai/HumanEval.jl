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
    # Step 1: Normalization is skipped as per the problem statement assumptions

    # Step 2: Check if the string is equal to its reverse
    return text == reverse(text)
end

# Example usage
println(is_palindrome("")) # true
println(is_palindrome("aba")) # true
println(is_palindrome("aaaaa")) # true
println(is_palindrome("zbcd")) # false
