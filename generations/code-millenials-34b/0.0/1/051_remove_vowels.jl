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
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    return join([c for c in text if !(c in vowels)])
end

println(remove_vowels("abcdef\nghijklm"))
println(remove_vowels("aaaaa"))
println(remove_vowels("aaBAA"))
println(remove_vowels("zbcd"))

