"""
    palindrome_with_append(s::String)::String

Find the shortest palindrome that begins with a supplied string. Algorithm idea
is simple:

  - Find the longest postfix of supplied string that is a palindrome.
  - Append to the end of the string reverse of a string prefix that comes before
    the palindromic suffix.

# Examples

```jldoctest
julia> palindrome_with_append("")
""

julia> palindrome_with_append("cat")
"catac"

julia> palindrome_with_append("cata")
"catac"
```
"""
function palindrome_with_append(s::String)::String
    function longest_palindromic_suffix(s::String)
        n = length(s)
        for i = 1:n
            if ispalindrome(s[(n-i+1):n])
                return s[(n-i+1):n]
            end
        end
        return ""
    end

    palindromic_suffix = longest_palindromic_suffix(s)
    non_palindromic_prefix = s[1:end-(length(palindromic_suffix)-1)]
    reversed_prefix = reverse(non_palindromic_prefix)
    return s * reversed_prefix
end
