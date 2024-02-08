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
    # Find the longest postfix of the supplied string that is a palindrome
    i = length(s)
    while i > 0 && s[i] == s[i-1]
        i -= 1
    end
    # Append to the end of the string the reverse of the string prefix that comes before the palindromic suffix
    return s * reverse(s[1:i-1])
end
