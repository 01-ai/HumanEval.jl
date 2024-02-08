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
    valid_numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    numbers_list = split(numbers, " ")
    sorted_list = sort(numbers_list, by = x -> findfirst(valid_numbers, x))
    return join(sorted_list, " ")
end
