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
    vowels = Set("aeiou")
    join(filter(x -> lowercase(x) ∉ vowels, text))
end
