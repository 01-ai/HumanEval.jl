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
    # Split the input string into a vector of numbers
    numbers_vec = split(numbers, " ")
    
    # Sort the vector of numbers
    sorted_numbers_vec = sort(numbers_vec)
    
    # Join the sorted numbers back into a string
    sorted_numbers_str = join(sorted_numbers_vec, " ")
    
    return sorted_numbers_str
end
