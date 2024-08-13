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
    # Define the Roman numeral symbols and their corresponding values
    roman_numerals = [
        (1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
        (100, "C"), (90, "XC"), (50, "L"), (40, "XL"),
        (10, "X"), (9, "IX"), (5, "V"), (4, "IV"),
        (1, "I")
    ]
    
    result = ""
    for (value, symbol) in roman_numerals
        while number >= value
            result *= symbol
            number -= value
        end
    end
    
    return lowercase(result)
end

# Examples
println(int_to_mini_roman(19))   # Output: "xix"
println(int_to_mini_roman(152))  # Output: "clii"
println(int_to_mini_roman(426))  # Output: "cdxxvi"
