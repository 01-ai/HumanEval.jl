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
    sentences = split(s, ['.', '?', '!'])

    # Initialize the count of boredoms
    boredom_count = 0

    # Iterate over the sentences
    for sentence in sentences
        # Split the sentence into words
        words = split(sentence)

        # Check if the sentence starts with "I"
        if !isempty(words) && words[1] == "I"
            # Increment the count of boredoms
            boredom_count += 1
        end
    end

    # Return the count of boredoms
    return boredom_count
end
