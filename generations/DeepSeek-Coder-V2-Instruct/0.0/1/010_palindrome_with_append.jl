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
    function is_palindrome(str::String)::Bool
        return str == reverse(str)
    end

    # Find the longest palindromic suffix
    for i in length(s):-1:0
        if is_palindrome(s[1:i])
            # Append the reverse of the prefix to the end of the string
            prefix = s[i+1:end]
            return s * reverse(prefix)
        end
    end

    # If the input string is empty, return it as is
    return s
end
