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
    number_map = Dict("zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9)
    number_list = split(numbers)
    sort!(number_list, by=x -> number_map[x])
    join(number_list, " ")
end

# Test cases
println(sort_numbers("three one five"))  # Expected output: "one three five"
println(sort_numbers("nine seven six five"))  # Expected output: "five six seven nine"
println(sort_numbers("zero one two three four five six seven eight nine"))  # Expected output: "zero one two three four five six seven eight nine"