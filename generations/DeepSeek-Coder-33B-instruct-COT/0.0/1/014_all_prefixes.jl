"""
    all_prefixes(s::String)::Vector{String}

Return list of all prefixes from shortest to longest of the input string.

# Examples

```jldoctest
julia> all_prefixes("abc") == ["a", "ab", "abc"]
true
```
"""

Here is a step-by-step outline of how to implement the function:

1. Initialize an empty vector to store the prefixes.
2. Iterate over the string, from the first character to the last.
3. At each iteration, take a substring from the start to the current character.
4. Append the substring to the vector.
5. Return the vector.

Here is the Julia code implementing the above steps:

