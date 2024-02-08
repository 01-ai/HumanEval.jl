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
    if isempty(s)
        return ""
    end

    rev_s = reverse(s)
    for i in 0:length(s)
        if s[1:end-i] == rev_s[i+1:end]
            return s * rev_s[1:i]
        end
    end
end

# Test cases
println(palindrome_with_append("")) # ""
println(palindrome_with_append("cat")) # "catac"
println(palindrome_with_append("cata")) # "catac" 
