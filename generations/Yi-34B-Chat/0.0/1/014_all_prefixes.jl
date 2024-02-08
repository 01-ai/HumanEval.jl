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
    for i in 1:length(s)
        push!(prefixes, s[1:i])
    end
    return prefixes
end
