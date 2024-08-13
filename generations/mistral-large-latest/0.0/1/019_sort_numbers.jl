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
    # Define a dictionary to map number names to their numerical values
    number_map = Dict("zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4,
                      "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9)

    # Split the input string into an array of number names
    number_names = split(numbers)

    # Sort the number names based on their numerical values
    sorted_names = sort(number_names, by=x -> number_map[x])

    # Join the sorted number names back into a string and return it
    return join(sorted_names, " ")
end
