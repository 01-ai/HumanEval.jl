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
    # Split the string into sentences
    sentences = split(s, r"[.!?]")

    # Initialize the count of boredoms
    boredoms = 0

    # Iterate through each sentence
    for sentence in sentences
        # Trim leading and trailing whitespace
        sentence = strip(sentence)

        # Check if the sentence starts with "I"
        if startswith(sentence, "I")
            boredoms += 1
        end
    end

    return boredoms
end
