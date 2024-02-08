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
    function is_palindrome(s::String)::Bool
        length = length(s)
        for i in 1:div(length, 2)
            if s[i] != s[length - i + 1]
                return false
            end
        end
        return true
    end

    function longest_palindrome_prefix(s::String)::String
        length = length(s)
        max_length = 0
        max_start = 0
        for i in 1:length
            length_i = min(i, length - i + 1)
            if is_palindrome(s[i:i + length_i - 1]) && length_i > max_length
                max_length = length_i
                max_start = i
            end
        end
        return s[max_start:max_start + max_length - 1]
    end

    function reverse(s::String)::String
        length = length(s)
        reversed = String[]
        for i in 1:length
            push!(reversed, s[length - i + 1])
        end
        return join(reversed)
    end

    prefix = s[1:end-length(longest_palindrome_prefix(s)) + 1]
    return prefix * reverse(prefix) * longest_palindrome_prefix(s)
end
