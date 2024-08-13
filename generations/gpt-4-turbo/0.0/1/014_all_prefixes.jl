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
    # Initialize an empty vector to store the prefixes
    prefixes = String[]
    
    # Loop through each character index in the string
    for i in 1:length(s)
        # Extract the substring from the start to the current index
        push!(prefixes, s[1:i])
    end
    
    # Return the vector of prefixes
    return prefixes
end
