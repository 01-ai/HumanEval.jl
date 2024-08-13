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
    # If the string is empty or already a palindrome, return it as is
    if isempty(s) || s == reverse(s)
        return s
    end

    # Find the longest palindromic suffix
    n = length(s)
    for i in 0:n-1
        suffix = s[n-i:end]
        if suffix == reverse(suffix)
            # Append the reverse of the prefix to the original string
            prefix = s[1:n-i-1]
            return s * reverse(prefix)
        end
    end

    # If no palindromic suffix found, append the reverse of the entire string
    return s * reverse(s[1:end-1])
end
