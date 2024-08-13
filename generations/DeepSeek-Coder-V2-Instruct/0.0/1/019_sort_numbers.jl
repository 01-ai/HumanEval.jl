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
    # Define a dictionary to map number words to their corresponding integer values
    num_dict = Dict(
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
    
    # Split the input string into an array of number words
    num_words = split(numbers)
    
    # Map the number words to their corresponding integer values
    num_values = [num_dict[word] for word in num_words]
    
    # Sort the integer values
    sorted_values = sort(num_values)
    
    # Map the sorted integer values back to their corresponding number words
    sorted_words = [k for (k, v) in num_dict if v in sorted_values]
    
    # Join the sorted number words into a single string
    return join(sorted_words, " ")
end
