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
    # Find the longest palindromic suffix of the input string
    function longest_palindromic_suffix(s)
        for i in length(s):-1:1
            if s[i:end] == reverse(s[i:end])
                return s[i:end]
            end
        end
        return ""
    end

    # Find the longest palindromic suffix of the input string
    suffix = longest_palindromic_suffix(s)

    # Append the reverse of the prefix to the end of the string
    prefix = s[1:length(s)-length(suffix)]
    return s * reverse(prefix)
end
