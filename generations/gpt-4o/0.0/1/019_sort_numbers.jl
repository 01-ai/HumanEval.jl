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
    # Define the mapping from number words to their corresponding integer values
    number_map = Dict(
        "zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4,
        "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9
    )
    
    # Define the reverse mapping from integer values to number words
    reverse_map = Dict(v => k for (k, v) in number_map)
    
    # Split the input string into individual number words
    number_words = split(numbers)
    
    # Convert the number words to their integer equivalents
    number_values = [number_map[word] for word in number_words]
    
    # Sort the integer values
    sorted_values = sort(number_values)
    
    # Convert the sorted integer values back to their string representations
    sorted_words = [reverse_map[value] for value in sorted_values]
    
    # Join the sorted string representations into a single space-delimited string
    return join(sorted_words, " ")
end
println(sort_numbers("three one five"))  # Output: "one three five"
