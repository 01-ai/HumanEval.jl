"""
    int_to_mini_roman(number::Int)::String

Given a positive integer, obtain its roman numeral equivalent as a string, and
return it in lowercase.

Restrictions: 1 <= num <= 1000

# Examples

```jldoctest
julia> int_to_mini_roman(19)
"xix"

julia> int_to_mini_roman(152)
"clii"

julia> int_to_mini_roman(426)
"cdxxvi"
```
"""
function int_to_mini_roman(number::Int)::String
    # Check if the number is within the valid range
    if number < 1 || number > 1000
        throw(DomainError(number, "Number must be between 1 and 1000"))
    end

    # Define a dictionary to map roman numerals to their integer values
    roman_map = Dict("i" => 1, "v" => 5, "x" => 10, "l" => 50, "c" => 100, "d" => 500, "m" => 1000)

    # Initialize an empty string to store the roman numeral
    roman_numeral = ""

    # Iterate through the roman numerals in descending order
    for numeral in ["m", "c", "l", "x", "v", "i"]
        # Calculate the number of times the current numeral can be used
        count = div(number, roman_map[numeral])

        # Add the numeral to the roman numeral string
        roman_numeral *= numeral ^ count

        # Update the number by subtracting the value of the current numeral
        number -= count * roman_map[numeral]
    end

    # Return the roman numeral in lowercase
    return lowercase(roman_numeral)
end
