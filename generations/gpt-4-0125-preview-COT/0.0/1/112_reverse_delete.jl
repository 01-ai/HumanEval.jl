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
    # Step 1: Filter characters
    filtered_s = filter(ch -> !(ch in c), s)
    
    # Step 2: Check palindrome
    is_palindrome = filtered_s == reverse(filtered_s)
    
    # Step 3: Return result
    return (filtered_s, is_palindrome)
end

# Examples
println(reverse_delete("abcde", "ae"))  # ("bcd", false)
println(reverse_delete("abcdef", "b"))  # ("acdef", false)
println(reverse_delete("abcdedcba", "ab"))  # ("cdedc", true)
