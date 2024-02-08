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
    prefixes = Vector{String}()
    for i in 0:length(s)-1
        push!(prefixes, s[1:i+1])
    end
    return prefixes
end
