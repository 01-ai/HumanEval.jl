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
    # Define a mapping from Roman numerals to their integer values
    roman_map = Dict(
        'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000
    )

    # Initialize an empty string to build the Roman numeral
    roman_str = ""

    # Loop through the integer, converting each place value to Roman numeral
    while number > 0
        # Add the appropriate Roman numeral for the current place value
        if number >= 1000
            roman_str *= "M"
            number -= 1000
        elseif number >= 900
            roman_str *= "CM"
            number -= 900
        elseif number >= 500
            roman_str *= "D"
            number -= 500
        elseif number >= 400
            roman_str *= "CD"
            number -= 400
        elseif number >= 100
            roman_str *= "C"
            number -= 100
        elseif number >= 90
            roman_str *= "XC"
            number -= 90
        elseif number >= 50
            roman_str *= "L"
            number -= 50
        elseif number >= 40
            roman_str *= "XL"
            number -= 40
        elseif number >= 10
            roman_str *= "X"
            number -= 10
        elseif number >= 9
            roman_str *= "IX"
            number -= 9
        elseif number >= 5
            roman_str *= "V"
            number -= 5
        elseif number >= 4
            roman_str *= "IV"
            number -= 4
        elseif number >= 1
            roman_str *= "I"
            number -= 1
        end
    end

    # Return the Roman numeral as a lowercase string
    return String(lowercase(roman_str))
end
