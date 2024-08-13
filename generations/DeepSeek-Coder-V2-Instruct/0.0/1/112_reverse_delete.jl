"""
    reverse_delete(s::String, c::String)::Tuple{String, Bool}

We are given two strings `s` and `c`, you have to deleted all the characters in
`s` that are equal to any character in `c` then check if the result string is
palindrome.  A string is called palindrome if it reads the same backward as
forward. You should return a tuple containing the result string and
`true`/`false` for the check.

# Examples

```jldoctest
julia> reverse_delete("abcde", "ae")
("bcd", false)

julia> reverse_delete("abcdef", "b")
("acdef", false)

julia> reverse_delete("abcdedcba", "ab")
("cdedc", true)
```
"""
function reverse_delete(s::String, c::String)::Tuple{String, Bool}
    # Create a set of characters to be deleted for efficient lookup
    chars_to_delete = Set(c)
    
    # Filter out characters in `s` that are in `chars_to_delete`
    result = filter(ch -> !(ch in chars_to_delete), s)
    
    # Check if the result string is a palindrome
    is_palindrome = result == reverse(result)
    
    return (result, is_palindrome)
end
