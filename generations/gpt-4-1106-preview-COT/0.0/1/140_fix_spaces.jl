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
    # Step 1: Check if the string is empty
    if isempty(s)
        return s
    end

    # Step 2: Initialize the result string
    result = ""
    was_space = false  # To keep track of consecutive spaces

    # Step 3: Iterate over the characters in the string
    for c in s
        if c != ' '
            # Step 5: If the character is not a space, append it to result
            result *= c
            was_space = false
        else
            if !was_space
                # Step 6: If it's the first space, append an underscore
                result *= '_'
            else
                # Step 7: If it's a consecutive space, replace the last character with a dash
                if !endswith(result, '-')
                    result = result[1:end-1] * '-'
                end
            end
            was_space = true
        end
    end

    # Step 8: Return the result
    return result
end
println(fix_spaces("Example"))  # Should print "Example"
println(fix_spaces("Example 1"))  # Should print "Example_1"
println(fix_spaces(" Example 2"))  # Should print "_Example_2"
println(fix_spaces(" Example   3"))  # Should print "_Example-3"
