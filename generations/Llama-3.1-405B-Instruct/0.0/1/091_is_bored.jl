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
    # Split the input string into sentences
    sentences = split(s, ['.', '?', '!'])

    # Initialize a counter for boredoms
    boredom_count = 0

    # Iterate over each sentence
    for sentence in sentences
        # Strip leading and trailing whitespace from the sentence
        sentence = strip(sentence)

        # Check if the sentence starts with "I" (case-sensitive)
        if startswith(sentence, "I")
            # If it does, increment the boredom count
            boredom_count += 1
        end
    end

    # Return the total boredom count
    return boredom_count
end
