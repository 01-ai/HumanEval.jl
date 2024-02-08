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
    new_s = replace(s, " " => "_")

    # Replace two or more consecutive underscores with -
    return replace(new_s, "_+" => "-")
end
