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
    function is_palindrome(s::String)
        return s == reverse(s)
    end

    function find_longest_palindromic_suffix(s::String)
        for i in length(s):-1:1
            if is_palindrome(s[i:end])
                return s[i:end]
            end
        end
        return ""
    end

    longest_palindromic_suffix = find_longest_palindromic_suffix(s)
    prefix = s[1:end-length(longest_palindromic_suffix)]
    
    return s * reverse(prefix)
end
