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
    s = replace(s, c => "")
    return (s, s == reverse(s))
end

# Test cases
@assert reverse_delete("abcde", "ae") == ("bcd", false)
@assert reverse_delete("abcdef", "b") == ("acdef", false)
@assert reverse_delete("abcdedcba", "ab") == ("cdedc", true)

