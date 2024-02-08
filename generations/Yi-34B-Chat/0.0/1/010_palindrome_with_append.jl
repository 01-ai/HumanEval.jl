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
    # Find the longest postfix of the string that is a palindrome
    palindrome_length = find_longest_palindrome_suffix(s)
    
    # If the entire string is a palindrome, return it
    if palindrome_length == length(s)
        return s
    end
    
    # Find the prefix that comes before the palindromic suffix
    prefix_length = length(s) - palindrome_length
    prefix = s[1:prefix_length]
    
    # Reverse the prefix and append it to the end of the string
    reversed_prefix = reverse(prefix)
    return s[1:palindrome_length] * reversed_prefix
end

# Helper function to find the longest palindrome suffix
function find_longest_palindrome_suffix(s::String)
    length_s = length(s)
    for i in 1:length_s
        if ispalindrome(s[i:end])
            return i
        end
    end
    return 0
end

# Check if a string is a palindrome
function ispalindrome(s::String)
    length_s = length(s)
    for i in 1:length_s // 2
        if s[i] != s[length_s - i + 1]
            return false
        end
    end
    return true
end
