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
    num_dict = Dict("zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9)
    num_list = split(numbers, " ")
    num_list = [num_dict[num] for num in num_list]
    sort!(num_list)
    num_list = [string(num) for num in num_list]
    return join(num_list, " ")
end
