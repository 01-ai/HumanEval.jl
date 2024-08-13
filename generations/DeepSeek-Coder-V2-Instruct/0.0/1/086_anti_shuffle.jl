"""
    anti_shuffle(s::String)::String

Write a function that takes a string and returns an ordered version of it.
Ordered version of string, is a string where all words (separated by space) are
replaced by a new word where all the characters arranged in ascending order
based on ascii value.

Note: You should keep the order of words and blank spaces in the sentence.

# Examples:

```jldoctest
julia> anti_shuffle("Hi")
"Hi"

julia> anti_shuffle("hello")
"ehllo"

julia> anti_shuffle("Hello World!!!")
"Hello !!!Wdlor"
```
"""
function anti_shuffle(s::String)::String
    # Split the string into words and spaces
    words = split(s, r"(\s+)", keepempty=false)
    spaces = collect(m.match for m in eachmatch(r"(\s+)", s))
    
    # Process each word to sort its characters
    sorted_words = [join(sort(collect(word))) for word in words]
    
    # Reconstruct the string with sorted words and original spaces
    result = ""
    for i in 1:length(sorted_words)
        result *= sorted_words[i]
        if i <= length(spaces)
            result *= spaces[i]
        end
    end
    
    return result
end
println(anti_shuffle("Hi"))  # Output: "Hi"
println(anti_shuffle("hello"))  # Output: "ehllo"
println(anti_shuffle("Hello World!!!"))  # Output: "Hello !!!Wdlor"
