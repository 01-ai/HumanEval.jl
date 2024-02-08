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
    # Step 2: Initialize the boredom counter
    boredom_count = 0
    
    # Step 3: Split the input string into sentences
    sentences = split(s, r"[.?!]")  # Use regex to split by '.', '?', or '!'
    
    # Step 4: Iterate over each sentence
    for sentence in sentences
        # Step 4a: Trim whitespace
        trimmed_sentence = strip(sentence)
        
        # Step 4b: Check if the sentence starts with "I"
        if startswith(trimmed_sentence, "I")
            # Step 4c: Increment the boredom counter
            boredom_count += 1
        end
    end
    
    # Step 5: Return the boredom counter
    return boredom_count
end
