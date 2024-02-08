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
    # Check that the input is a positive integer
    if number <= 0
        throw(DomainError("Input must be a positive integer"))
    end

    # Convert the input to a string
    number_str = string(number)

    # Initialize an empty string to store the roman numeral
    roman_numeral = ""

    # Iterate over the digits of the input string
    for i in 1:length(number_str)
        # Get the current digit
        digit = number_str[i]

        # Convert the digit to a roman numeral
        if digit == '1'
            roman_numeral *= "i"
        elseif digit == '2'
            roman_numeral *= "ii"
        elseif digit == '3'
            roman_numeral *= "iii"
        elseif digit == '4'
            roman_numeral *= "iv"
        elseif digit == '5'
            roman_numeral *= "v"
        elseif digit == '6'
            roman_numeral *= "vi"
        elseif digit == '7'
            roman_numeral *= "vii"
        elseif digit == '8'
            roman_numeral *= "viii"
        elseif digit == '9'
            roman_numeral *= "ix"
        elseif digit == '0'
            roman_numeral *= "x"
        end
    end

    # Return the roman numeral
    return roman_numeral
end
