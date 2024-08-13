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

    n = length(s)

    # Find the longest palindromic suffix
    for i in 1:n
        if is_palindrome(s[i:end])
            # The longest palindromic suffix starts at index i
            # Append the reverse of the prefix before the palindromic suffix
            return s * reverse(s[1:i-1])
        end
    end

    # If no palindromic suffix is found (which should not happen), return the original string
    return s
end

# Examples
println(palindrome_with_append(""))       # Output: ""
println(palindrome_with_append("cat"))    # Output: "catac"
println(palindrome_with_append("cata"))   # Output: "catac"
