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
    boredoms = 0
    sentences = split(s, ".")
    for sentence in sentences
        words = split(sentence, " ")
        if length(words) > 0 && words[1] == "I"
            boredoms += 1
        end
    end
    return boredoms
end
