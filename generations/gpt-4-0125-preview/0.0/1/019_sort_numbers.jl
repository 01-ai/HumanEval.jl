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
    # Mapping from word representation of numbers to their numeric values
    num_map = Dict("zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4,
                   "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9)
    
    # Split the input string into individual words
    words = split(numbers)
    
    # Sort the words based on their numeric values
    sorted_words = sort(words, by = word -> num_map[word])
    
    # Join the sorted words back into a single string
    sorted_numbers_str = join(sorted_words, " ")
    
    return sorted_numbers_str
end
