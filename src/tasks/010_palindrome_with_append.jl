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
    _is_palindrome(s::String)::Bool = s == reverse(s)  # Test if `s` is a palindrome


    isempty(s) && return ""
    beginning_of_suffix = 1

    while !_is_palindrome(s[beginning_of_suffix:end])
        beginning_of_suffix += 1
    end

    return s * reverse(s[begin:beginning_of_suffix-1])
end
