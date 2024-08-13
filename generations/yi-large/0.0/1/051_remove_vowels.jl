"""
    remove_vowels(text::String)::String

`remove_vowels` is a function that takes string and returns string without vowels.

# Examples

```jldoctest
julia> remove_vowels("")
""

julia> remove_vowels("abcdef\\nghijklm")
"bcdf\\nghjklm"

julia> remove_vowels("abcdef")
"bcdf"

julia> remove_vowels("aaaaa")
""

julia> remove_vowels("aaBAA")
"B"

julia> remove_vowels("zbcd")
"zbcd"
```
"""
function remove_vowels(text::String)::String
    # Define a regular expression pattern to match vowels
    vowel_pattern = r"[aeiouAEIOU]"

    # Replace all vowels with empty string
    return replace(text, vowel_pattern => "")
end

# Test the function
println(remove_vowels(""))
println(remove_vowels("abcdef\nghijklm"))
println(remove_vowels("abcdef"))
println(remove_vowels("aaaaa"))
println(remove_vowels("aaBAA"))
println(remove_vowels("zbcd"))
