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
    # Function to check if a given string is a palindrome
    is_palindrome(str::String)::Bool = str == reverse(str)

    n = length(s)
    # If the string is empty or already a palindrome, it is its own shortest palindrome
    if n == 0 || is_palindrome(s)
        return s
    end

    # Find the longest palindromic suffix
    for i in 1:n
        # Substring from i to end
        suffix = s[i:end]
        if is_palindrome(suffix)
            # Found the longest palindromic suffix, prepare the prefix to append
            prefix_to_append = reverse(s[1:i-1])
            return s * prefix_to_append
        end
    end

    # If no palindromic suffix is found, which should not happen given the logic,
    # return the original string appended with its reverse (excluding the last character to avoid duplication)
    return s * reverse(s[1:end-1])
end
