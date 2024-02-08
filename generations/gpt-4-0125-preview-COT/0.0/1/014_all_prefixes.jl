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
    # Step 1: Initialize an empty vector for storing prefixes
    prefixes = Vector{String}()
    
    # Step 2: Loop through the string to extract prefixes
    for i in 1:length(s)
        # Step 3: Extract the prefix
        prefix = s[1:i]
        
        # Step 4: Store the prefix
        push!(prefixes, prefix)
    end
    
    # Step 5: Return the vector of prefixes
    return prefixes
end
# Test the function with an example
println(all_prefixes("abc"))  # Expected output: ["a", "ab", "abc"]
