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
    # Create a set of characters to delete from the string
    delete_set = Set(c)

    # Initialize result string and palindrome flag
    result = ""
    palindrome = true

    # Iterate through the input string
    for char in s
        # Check if the character is in the delete set
        if char in delete_set
            continue
        else
            # Append the character to the result string
            result *= char
        end
    end

    # Check if the result string is a palindrome
    if result == reverse(result)
        palindrome = true
    else
        palindrome = false
    end

    # Return the result string and palindrome flag as a tuple
    return (result, palindrome)
end
