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
    # Create a dictionary that maps the string representation of numbers to their integer values
    num_dict = Dict("zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9)

    # Split the input string into a list of words
    words = split(numbers)

    # Map the list of words to their corresponding integer values using the dictionary
    nums = map(word -> num_dict[word], words)

    # Sort the list of integers
    sorted_nums = sort(nums)

    # Map the sorted list of integers back to their corresponding string values using the dictionary
    sorted_words = map(num -> findfirst(isequal(num), num_dict)[1], sorted_nums)

    # Join the list of string values into a single string with spaces between each word
    return join(sorted_words, " ")
end
