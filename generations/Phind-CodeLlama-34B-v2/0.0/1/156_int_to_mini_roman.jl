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
    if number < 1 || number > 1000
        throw(ArgumentError("Input must be between 1 and 1000"))
    end

    val = [
        1000, 900, 500, 400,
        100, 90, 50, 40,
        10, 9, 5, 4,
        1
    ]
    syb = [
        "m", "cm", "d", "cd",
        "c", "xc", "l", "xl",
        "x", "ix", "v", "iv",
        "i"
    ]
    roman_numeral = ""

    for i = 1:length(val)
        count = div(number, val[i])
        number -= count * val[i]
        roman_numeral *= repeat(syb[i], count)
    end

    return roman_numeral
end
