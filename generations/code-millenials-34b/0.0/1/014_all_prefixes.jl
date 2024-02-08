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
    return [s[1:i] for i in 1:length(s)]
end

# Test the function
@assert all_prefixes("abc") == ["a", "ab", "abc"]
@assert all_prefixes("123") == ["1", "12", "123"]
@assert all_prefixes("") == [""]
@assert all_prefixes("a") == ["a"]
