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
    # Replace all spaces with underscores
    s = replace(s, " " => "_")
    
    # Replace all consecutive underscores with a single hyphen
    while occursin("__", s)
        s = replace(s, "__" => "_")
    end
    
    # Replace all underscores with hyphens
    s = replace(s, "_" => "-")
    
    return s
end
println(fix_spaces("Example"))        # "Example"
println(fix_spaces("Example 1"))      # "Example_1"
println(fix_spaces(" Example 2"))     # "_Example_2"
println(fix_spaces(" Example   3"))   # "_Example-3"
