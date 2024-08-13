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
    # Define a dictionary to map number words to their corresponding integers
    number_dict = Dict(
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
    number_words = split(numbers)
    
    # Convert each number word to its corresponding integer using the dictionary
    number_ints = [number_dict[word] for word in number_words]
    
    # Sort the array of integers
    sorted_ints = sort(number_ints)
    
    # Find the keys (number words) corresponding to the sorted integers
    sorted_words = [k for (k, v) in number_dict if v in sorted_ints]
    
    # Join the sorted number words into a space-delimited string
    sorted_numbers = join(sorted_words, " ")
    
    return sorted_numbers
end
