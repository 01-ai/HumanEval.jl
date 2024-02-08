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
    n = length(s)
    i = n + 1
    while i > 1
        i -= 1
        if is_palindrome(s[1:i])
            return s * reverse(s[1:i])
        end
    end
    return s * reverse(s)
end

function is_palindrome(s::String)::Bool
    return s == reverse(s)
end
