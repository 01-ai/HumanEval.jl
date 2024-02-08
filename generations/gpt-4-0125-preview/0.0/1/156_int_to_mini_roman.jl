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
    # Define a list of Roman numerals and their values
    values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    symbols = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

    # Initialize an empty string to build the Roman numeral
    roman = ""

    # Iterate through each value-symbol pair
    for (value, symbol) in zip(values, symbols)
        # While the number is greater than or equal to the value
        while number >= value
            # Append the symbol to the Roman numeral string
            roman *= symbol
            # Subtract the value from the number
            number -= value
        end
    end

    # Return the Roman numeral in lowercase
    return lowercase(roman)
end
