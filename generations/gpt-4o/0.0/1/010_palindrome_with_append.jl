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
    # Helper function to check if a string is a palindrome
    is_palindrome(str::String) = str == reverse(str)
    
    n = length(s)
    
    # Find the longest palindromic suffix
    for i in 0:n
        suffix = s[n-i+1:end]
        if is_palindrome(suffix)
            prefix = s[1:n-i]
            return s * reverse(prefix)
        end
    end
    
    return s  # This should never be reached because the empty string is always a palindrome
end
