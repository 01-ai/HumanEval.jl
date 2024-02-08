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
    roman_numerals = ["i", "ii", "iii", "iv", "v", "vi", "vii", "viii", "ix"]
    roman_numerals += collect(repeat(["x"], 9) .* ["", "x", "xx", "xc", "xl", "l", "lx", "lxx", "lxx", "xc"])
    roman_numerals += collect(repeat(["c"], 8) .* ["", "cd", "cc", "d", "dc", "cm", "cmc", "dcc", "dccc"])
    roman_numerals += ["m", "mc", "mm"]

    number_str = string(number)
    result = ""

    for (i, digit) in enumerate(reverse(number_str))
        digit = parse(Int, digit)
        if digit < 0 || digit > 9
            error("Invalid input: number must be between 1 and 1000")
        end

        if digit < length(roman_numerals)
            result *= roman_numerals[digit]
        else
            remainder = digit % length(roman_numerals)
            result *= roman_numerals[length(roman_numerals) - remainder]
        end
    end

    return result
end
