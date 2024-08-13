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
    # Find the longest palindrome suffix
    for i in n:-1:1
        if ispalindrome(s[i:end])
            # Append the reverse of the prefix before the palindrome suffix
            return s * reverse(s[1:i-1])
        end
    end
    return s
end

function ispalindrome(s::String)::Bool
    n = length(s)
    for i in 1:div(n, 2)
        if s[i] != s[n-i+1]
            return false
        end
    end
    return true
end
