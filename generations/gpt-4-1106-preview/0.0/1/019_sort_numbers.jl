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
    # Create a mapping from number words to their corresponding digits
    num_word_to_digit = Dict(
        "zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4,
        "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9
    )

    # Split the input string into individual number words
    num_words = split(numbers)

    # Convert the number words to digits, sort them, and then convert back to words
    sorted_num_words = [kv[1] for kv in sort(collect(kv for (k, v) in num_word_to_digit if k in num_words))]

    # Join the sorted number words into a single string
    return join(sorted_num_words, " ")
end
println(sort_numbers("three one five"))  # Output should be "one three five"
