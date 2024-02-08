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
    # Define a dictionary to map string numbers to their corresponding integer values
    number_dict = Dict("zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9)

    # Split the input string into an array of words
    words = split(numbers)

    # Convert each word to its corresponding integer value and store in a new array
    numbers_int = [number_dict[word] for word in words]

    # Sort the array of integers
    sort_numbers_int = sort(numbers_int)

    # Convert each integer back to its corresponding word and join them into a string
    sorted_numbers = join([[k for k in keys(number_dict) if number_dict[k] == i][1] for i in sort_numbers_int], " ")

    return sorted_numbers
end
