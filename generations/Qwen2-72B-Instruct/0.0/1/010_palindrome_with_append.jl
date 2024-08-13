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
    # Get the length of the string
    n = length(s)
    # Initialize the longest palindromic suffix length to 0
    longest_palindrome_len = 0

    # Iterate over the string in reverse to find the longest palindromic suffix
    for i in 1:n
        # Check if the substring from i to n is a palindrome
        if s[i:n] == reverse(s[i:n])
            # Update the longest palindromic suffix length
            longest_palindrome_len = n - i + 1
            # Break the loop as we found the longest palindromic suffix
            break
        end
    end

    # Calculate the prefix that is not part of the palindromic suffix
    prefix = s[1:n-longest_palindrome_len+1]
    # Append the reverse of the prefix to the original string to form the shortest palindrome
    return s * reverse(prefix)
end
