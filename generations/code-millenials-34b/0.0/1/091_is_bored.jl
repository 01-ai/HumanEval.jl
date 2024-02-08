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

    # Iterate over each sentence
    for sentence in sentences
        # Trim leading and trailing whitespace
        sentence = strip(sentence)

        # Check if the sentence starts with "I"
        if startswith(sentence, "I")
            # Increment the boredom count
            boredom_count += 1
        end
    end

    # Return the count of boredoms
    return boredom_count
end

# Test cases
@assert is_bored("Hello world") == 0
@assert is_bored("The sky is blue. The sun is shining. I love this weather") == 1
@assert is_bored("I am bored. I can't wait to go home!") == 2
@assert is_bored("It's raining. I like rain.") == 1
@assert is_bored("I am bored") == 1
@assert is_bored("I am not bored") == 0
@assert is_bored("I am bored. I am bored") == 2
@assert is_bored("I am bored. I am not bored") == 1
@assert is_bored("I am not bored. I am bored") == 1
@assert is_bored("I am not bored. I am not bored") == 0
@assert is_bored("I am not bored. I am not bored. I am not bored") == 0
@assert is_bored("I am not bored. I am not bored. I am bored") == 1
@assert is_bored("") == 0
@assert is_bored("I") == 1
@assert is_bored("I am bored.") == 1
@assert is_bored("I am bored?") == 1
@assert is_bored("I am bored!") == 1
@assert is_bored("I am bored with this test.") == 1
@assert is_bored("I am bored with this test?") == 1
@assert is_bored("I am bored with this test!") == 1
@assert is_bored("I am bored with this test. I am bored with this test.") == 2
@assert is_bored("I am bored with this test. I am bored with this test?") == 2
@assert is_bored("I am bored with this test. I am bored with this test!") == 2
@assert is_bored("I am bored with this test! I am bored with this test.") == 2
@assert is_bored("I am bored with this test! I am bored with this test?") == 2
@assert is_bored("I am bored with this test! I am bored with this test!") == 2
@assert is_bored("I am bored with this test? I am bored with this test.") == 2
@assert is_bored("I am bored with this test? I am bored with this test?") == 2
@assert is_bored("I am bored with this test? I am bored with this test!") == 2
@assert is_bored("I am bored with this test. I am not bored with this test.") == 1
@assert is_bored("I am bored with this test. I am not bored with this test?") == 1
@assert is_bored("I am bored with this test. I am not bored with this test!") == 1
@assert is_bored("I am bored with this test! I am not bored with this test.") == 1
@assert is_bored("I am bored with this test! I am not bored with this test?") == 1
@assert is_bored("I am bored with this test! I am not bored with this test!") == 1
@assert is_bored("I am bored with this test? I am not bored with this test.") == 1
@assert is_bored("I am bored with this test? I am not bored with this test?") == 1
@assert is_bored("I am bored with this test? I am not bored with this test!") == 1
@assert is_bored("I am not bored with this test. I am bored with this test.") == 1
@assert is_bored("I am not bored with this test. I am bored with this test?") == 1
@assert is_bored("I am not bored with this test. I am bored with this test!") == 1
@assert is_bored("I am not bored with this test! I am bored with this test.") == 1
@assert is_bored("I am not bored with this test! I am bored with this test?") == 1
@assert is_bored("I am not bored with this test! I am bored with this test!") == 1
@assert is_bored("I am not bored with this test? I am bored with this test.") == 1
@assert is_bored("I am not bored with this test? I am bored with this test?") == 1
@assert is_bored("I am not bored with this test? I am bored with this test!") == 1
@assert is_bored("I am not bored with this test. I am not bored with this test.") == 0
@assert is_bored("I am not bored with this test. I am not bored with this test?") == 0
@assert is_bored("I am not bored with this test. I am not bored with this test!") == 0
@assert is_bored("I am not bored with this test! I am not bored with this test.") == 0
@assert is_bored("I am not bored with this test! I am not bored with this test?") == 0
@assert is_bored("I am not bored with this test! I am not bored with this test!") == 0
@assert is_bored("I am not bored with this test? I am not bored with this test.") == 0
@assert is_bored("I am not bored with this test? I am not bored with this test?") == 0
@assert is_bored("I am not bored with this test? I am not bored with this test!") == 0

