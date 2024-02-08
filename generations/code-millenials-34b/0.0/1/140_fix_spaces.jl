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

    # If there are two or more consecutive underscores, replace them with a single -
    s = replace(s, "__" => "-")

    return s
end

# Test cases
@assert fix_spaces("Example") == "Example"
@assert fix_spaces("Example 1") == "Example_1"
@assert fix_spaces(" Example 2") == "_Example_2"
@assert fix_spaces(" Example   3") == "_Example-3"

