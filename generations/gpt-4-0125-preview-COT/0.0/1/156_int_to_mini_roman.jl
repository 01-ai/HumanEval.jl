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
    # Step 1: Define the Roman numeral mappings
    roman_numerals = [
        (1000, "m"), (900, "cm"), (500, "d"), (400, "cd"),
        (100, "c"), (90, "xc"), (50, "l"), (40, "xl"),
        (10, "x"), (9, "ix"), (5, "v"), (4, "iv"), (1, "i")
    ]
    
    # Step 2: Initialize an empty string for the result
    result = ""
    
    # Step 3: Iterate through the Roman numeral mappings
    for (value, numeral) in roman_numerals
        # Determine how many times the numeral fits into the number
        count = div(number, value)
        
        # Append the numeral to the result string as many times as it fits
        result *= repeat(numeral, count)
        
        # Decrease the number by the total value added to the result string
        number -= value * count
    end
    
    # Step 4: Return the result string in lowercase
    return result
end
