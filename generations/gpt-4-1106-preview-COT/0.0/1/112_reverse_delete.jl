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

To implement the `reverse_delete` function, we will follow these steps:

1. Define the function `reverse_delete` that takes two string arguments `s` and `c`.
2. Create a new string `filtered_s` by filtering out all characters from `s` that are present in `c`.
3. Define a helper function `is_palindrome` that takes a string and returns `true` if the string is a palindrome, otherwise `false`.
4. Use the `is_palindrome` function to check if `filtered_s` is a palindrome.
5. Return a tuple containing `filtered_s` and the result of the palindrome check.

Now, let's write the code for the `reverse_delete` function and the helper function `is_palindrome`.
