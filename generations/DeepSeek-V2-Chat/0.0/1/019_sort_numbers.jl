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
    # Mapping from string representation to integer value
    num_map = Dict(
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
    
    # Split the input string into individual number words
    num_words = split(numbers)
    
    # Convert the words to their integer equivalents and sort them
    sorted_nums = sort(getindex.(Ref(num_map), num_words))
    
    # Convert the sorted integer values back to their string representations
    sorted_words = [k for (k, v) in num_map if v in sorted_nums]
    
    # Join the sorted string representations into a single string with spaces
    return join(sorted_words, " ")
end

# Example usage
println(sort_numbers("three one five"))  # Output: "one three five"
