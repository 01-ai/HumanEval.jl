"""
    is_bored(s::String)::Int

You'll be given a string of words, and your task is to count the number of
boredoms. A boredom is a sentence that starts with the word "I". Sentences are
delimited by '.', '?' or '!'.

# Examples

```jldoctest
julia> is_bored("Hello world")
0

julia> is_bored("The sky is blue. The sun is shining. I love this weather")
1
```
"""
function is_bored(s::String)::Int
    sentences = split(s, r"[.!?]")
    boredoms = sum(startswith(strip(sentence), "I") for sentence in sentences)
    return boredoms
end
