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
    number_order = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    sorted_numbers = sort!(split(numbers), by=x -> number_order.indexof(x))
    join(sorted_numbers, " ")
end
