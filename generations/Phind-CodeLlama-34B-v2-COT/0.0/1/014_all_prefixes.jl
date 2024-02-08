"""
    all_prefixes(s::String)::Vector{String}

Return list of all prefixes from shortest to longest of the input string.

# Examples

```jldoctest
julia> all_prefixes("abc") == ["a", "ab", "abc"]
true
```
"""
function all_prefixes(s::String)::Vector{String}
    # Initialize an empty vector of strings to store the prefixes
    prefixes = String[]

    # Iterate over the characters in the input string
    for i in 1:length(s)
        # In each iteration, append the current character to the end of the current prefix
        push!(prefixes, s[1:i])
    end

    # Return the vector of prefixes
    return prefixes
end
