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
    # Create a dictionary to map numberals to their corresponding numerical values
    numberals = Dict(
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
    
    # Split the input string into individual numberals
    numberals_list = split(numbers)
    
    # Convert the numberals to their numerical values
    numerical_values = [numberals[numberal] for numberal in numberals_list]
    
    # Sort the numerical values in ascending order
    sorted_numerical_values = sort(numerical_values)
    
    # Convert the sorted numerical values back to numberals
    sorted_numberals = [key for (key, value) in numberals if value in sorted_numerical_values]
    
    # Join the sorted numberals into a string and return it
    return join(sorted_numberals, " ")
end
sort_numbers("three one five")
"one three five"
