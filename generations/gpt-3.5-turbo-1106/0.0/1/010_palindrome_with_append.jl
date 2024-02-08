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
    function is_palindrome(s)
        return s == reverse(s)
    end
    
    for i in 1:length(s)
        if is_palindrome(s[i:end])
            return s * reverse(s[1:i-1])
        end
    end
    return s * reverse(s[1:end-1])
end
