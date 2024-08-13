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
        return s
    end

    # Convert string to array of characters for easier manipulation
    s_chars = collect(s)

    # Check from the end to find the longest palindromic suffix
    for i in n:-1:1
        if s_chars[1:i] == reverse(s_chars[1:i])
            # If the substring s[1:i] is a palindrome
            # Append the reverse of the remaining prefix to the end
            return join(s_chars) * join(reverse(s_chars[1:n-i]))
        end
    end

    # If no palindromic suffix found, return the whole string mirrored
    return join(s_chars) * join(reverse(s_chars[1:end-1]))
end
