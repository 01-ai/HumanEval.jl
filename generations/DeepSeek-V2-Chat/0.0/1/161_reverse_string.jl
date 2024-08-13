"""
    reverse_string(s::String)::String

You are given a string `s`. If `s[i]` is a letter, reverse its case from lower
to upper or vise versa, otherwise keep it as it is.  If the string contains no
letters, reverse the string. The function should return the resulted string.

# Examples

```jldoctest
julia> reverse_string("1234")
"4321"

julia> reverse_string("ab")
"AB"

julia> reverse_string("#a@C")
"#A@c"
```
"""
function reverse_string(s::String)::String
    # Check if the string contains any letters
    contains_letters = any(c -> isletter(c), s)
    
    # If the string contains no letters, reverse the string
    if !contains_letters
        return reverse(s)
    end
    
    # Initialize an empty string to store the result
    result = String[]
    
    # Iterate over the string in reverse order
    for char in reverse(s)
        if isletter(char)
            # Reverse the case of the letter
            if islower(char)
                push!(result, uppercase(char))
            else
                push!(result, lowercase(char))
            end
        else
            # Keep the character as it is if it's not a letter
            push!(result, char)
        end
    end
    
    # Join the array of characters into a single string
    return join(result)
end
