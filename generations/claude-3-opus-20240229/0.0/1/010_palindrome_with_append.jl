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
    rev_s = reverse(s)

    # Find the longest palindromic suffix
    for i in 0:n-1
        if s[1:n-i] == rev_s[i+1:n]
            return s * reverse(s[n-i+1:n])
        end
    end

    # If the entire string is not a palindrome, append the reversed string
    return s * reverse(s[1:n-1])
end
