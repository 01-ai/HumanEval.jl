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
    # Step 2: Define vowels
    vowels = "aeiouAEIOU"
    
    # Step 3: Remove vowels from the text
    # Use a comprehension to filter out vowels and join the result into a string
    result = join([char for char in text if !(char in vowels)])
    
    # Step 4: Return the result
    return result
end

# Step 5: Testing the function with provided examples
println(remove_vowels(""))  # Expected: ""
println(remove_vowels("abcdef\nghijklm"))  # Expected: "bcdf\nghjklm"
println(remove_vowels("abcdef"))  # Expected: "bcdf"
println(remove_vowels("aaaaa"))  # Expected: ""
println(remove_vowels("aaBAA"))  # Expected: "B"
println(remove_vowels("zbcd"))  # Expected: "zbcd"
