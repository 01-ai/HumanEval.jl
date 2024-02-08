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
    # Define a dictionary to map the string numbers to their corresponding integer values
    num_dict = Dict("zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, 
                    "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9)

    # Split the input string into a vector of words
    words = split(numbers)

    # Sort the words by their corresponding integer values
    sorted_words = sort(words, by=x->num_dict[x])

    # Join the sorted words back into a string
    sorted_numbers = join(sorted_words)

    return sorted_numbers
end
