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
    # Split the string into sentences based on '.', '?', and '!'
    sentences = split(s, r"[.?!]")
    
    # Initialize a counter for boredom sentences
    boredom_count = 0
    
    # Iterate through each sentence
    for sentence in sentences
        # Trim whitespace from the sentence
        trimmed_sentence = strip(sentence)
        
        # Check if the sentence starts with "I" or "I "
        if startswith(trimmed_sentence, "I ") || trimmed_sentence == "I"
            # Increment the boredom count
            boredom_count += 1
        end
    end
    
    return boredom_count
end