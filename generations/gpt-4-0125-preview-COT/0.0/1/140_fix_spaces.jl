"""
    fix_spaces(s::String)::String

Given a string text, replace all spaces in it with underscores, and if a string
has two or more consecutive spaces, then replace all consecutive spaces with -

# Examples

```jldoctest
julia> fix_spaces("Example")
"Example"

julia> fix_spaces("Example 1")
"Example_1"

julia> fix_spaces(" Example 2")
"_Example_2"

julia> fix_spaces(" Example   3")
"_Example-3"
```
"""
function fix_spaces(s::String)::String
    # Step 1 & 2: Replace consecutive spaces with '-'
    modified_s = replace(s, r"\s{2,}" => "-")  # Using regex to identify two or more spaces and replace them with '-'
    
    # Step 3: Replace remaining single spaces with '_'
    modified_s = replace(modified_s, " " => "_")
    
    return modified_s
end
