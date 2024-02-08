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
    sentences = split(s, ['.', '?', '!'])

    # Step 2: Initialize a counter
    boredom_count = 0

    # Step 3: Iterate over the sentences
    for sentence in sentences
        # Step 4: Check if the sentence starts with "I"
        if startswith(strip(sentence), "I")
            # Step 5: Increment the counter
            boredom_count += 1
        end
    end

    return boredom_count
end
