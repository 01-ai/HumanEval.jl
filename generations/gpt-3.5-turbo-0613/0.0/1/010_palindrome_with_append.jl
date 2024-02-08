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
    if n == 0
        return ""
    end
    
    i = n
    while i > 1
        if s[1:i] == reverse(s[1:i])
            break
        end
        i -= 1
    end
    
    return s * reverse(s[1:i-1])
end
println(palindrome_with_append(""))  # Output: ""
println(palindrome_with_append("cat"))  # Output: "catac"
println(palindrome_with_append("cata"))  # Output: "catac"
