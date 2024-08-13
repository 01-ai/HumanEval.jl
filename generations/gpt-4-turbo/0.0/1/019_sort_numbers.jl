"""
    sort_numbers(numbers::String)::String

Input is a space-delimited string of numberals from "zero" to "nine".  Valid
choices are "zero", "one", "two", "three", "four", "five", "six", "seven",
"eight" and "nine".  Return the string with numbers sorted from smallest to
largest

# Examples

```jldoctest
julia> sort_numbers("three one five")
"one three five"
```
"""
function sort_numbers(numbers::String)::String
    # Mapping from word to digit
    word_to_digit = Dict(
        "zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4,
        "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9
    )
    
    # Split the input string into words
    words = split(numbers)
    
    # Sort the words based on their corresponding numeric value
    sorted_words = sort(words, by = word -> word_to_digit[word])
    
    # Join the sorted words back into a single string
    return join(sorted_words, " ")
end
