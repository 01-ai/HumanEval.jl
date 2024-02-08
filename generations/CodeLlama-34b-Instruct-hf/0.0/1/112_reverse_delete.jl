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
    # Create a new string by deleting all characters in s that are equal to any character in c
    new_s = ""
    for i in 1:length(s)
        if s[i] ∉ c
            new_s *= s[i]
        end
    end

    # Check if the result string is a palindrome
    is_palindrome = new_s == reverse(new_s)

    return (new_s, is_palindrome)
end
