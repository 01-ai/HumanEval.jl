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
    # Create a dictionary to map the string numbers to their corresponding integer values
    num_dict = Dict("zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9)

    # Split the input string into an array of strings
    num_array = split(numbers)

    # Map the array of strings to an array of integers using the dictionary
    num_array = map(x -> num_dict[x], num_array)

    # Sort the array of integers
    sort!(num_array)

    # Map the sorted array of integers back to an array of strings using the dictionary
    num_array = map(x -> begin
        for (k, v) in num_dict
            if v == x
                return k
            end
        end
    end, num_array)

    # Join the array of strings into a single string with spaces between each element and return it
    return join(num_array, " ")
end
