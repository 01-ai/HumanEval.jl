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
    # Initialize the counter for boredoms
    boredom_count = 0
    
    # Split the string into sentences based on '.', '?' or '!'
    sentences = split(s, r"[.?!]")
    
    # Iterate over each sentence
    for sentence in sentences
        # Check if the sentence starts with "I" (ignoring case)
        if startswith(sentence, "I ")
            # Increment the boredom counter
            boredom_count += 1
        end
    end
    
    return boredom_count
end

# Example usage
# julia> is_bored("Hello world")
# 0
# julia> is_bored("The sky is blue. The sun is shining. I love this weather")
# 1
