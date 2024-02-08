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
    # Step 1: Split the input string into sentences
    sentences = split(s, r"[.?!]")  # Using regex to split by '.', '?', or '!'

    # Step 2: Trim and Normalize Sentences
    trimmed_sentences = [strip(sentence) for sentence in sentences]  # Trimming whitespace
    normalized_sentences = [lowercase(sentence) for sentence in trimmed_sentences]  # Converting to lowercase

    # Step 3: Count Boredoms
    boredom_count = 0
    for sentence in normalized_sentences
        if startswith(sentence, "i ")  # Checking if the sentence starts with "i "
            boredom_count += 1
        end
    end

    # Step 4: Return the Counter
    return boredom_count
end