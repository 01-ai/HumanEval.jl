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
    # Create a dictionary to map the words to their corresponding numerical values
    word_to_num = Dict(
        "zero" => 0,
        "one" => 1,
        "two" => 2,
        "three" => 3,
        "four" => 4,
        "five" => 5,
        "six" => 6,
        "seven" => 7,
        "eight" => 8,
        "nine" => 9
    )

    # Split the input string into words and convert them to their numerical values
    nums = map(x -> word_to_num[x], split(numbers))

    # Sort the numerical values
    sort!(nums)

    # Convert the sorted numerical values back to words and join them into a string
    sorted_words = map(x -> begin
        for (word, num) in word_to_num
            if num == x
                return word
            end
        end
    end, nums)

    return join(sorted_words, " ")
end
