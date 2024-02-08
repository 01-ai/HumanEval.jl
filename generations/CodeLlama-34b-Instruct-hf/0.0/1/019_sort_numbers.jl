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
    # Split the input string into an array of numberals
    numberals = split(numbers, " ")

    # Sort the array of numberals using the `sort` function
    sorted_numberals = sort(numberals)

    # Join the sorted array of numberals into a string
    sorted_numbers = join(sorted_numberals, " ")

    return sorted_numbers
end
