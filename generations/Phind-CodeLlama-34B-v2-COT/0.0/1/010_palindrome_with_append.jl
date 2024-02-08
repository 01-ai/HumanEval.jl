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
    # If the string is empty, return an empty string
    if isempty(s)
        return ""
    end

    # Find the longest palindromic suffix
    for i in length(s):-1:1
        if s[i:end] == reverse(s[i:end])
            # If the palindromic suffix is the whole string, return s + reverse of s
            if i == 1
                return s * reverse(s)
            else
                # Otherwise, return s + reverse of the part of the string that comes before the palindromic suffix
                return s * reverse(s[1:i-1])
            end
        end
    end
end
println(palindrome_with_append(""))  # ""
println(palindrome_with_append("cat"))  # "catac"
println(palindrome_with_append("cata"))  # "catac"
