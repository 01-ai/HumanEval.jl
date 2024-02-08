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
    @assert 1 <= number <= 1000 "Number must be between 1 and 1000"

    roman_numerals = ["i", "v", "x", "l", "c", "d", "m"]
    values = [1, 5, 10, 50, 100, 500, 1000]
    result = ""

    for (i, value) in enumerate(values)
        while number >= value
            result *= roman_numerals[i]
            number -= value
        end
        if number == 4
            result *= roman_numerals[i] * roman_numerals[i-1]
            number -= 4 * values[i-1]
        elseif number == 9
            result *= roman_numerals[i] * roman_numerals[i+1]
            number -= 9 * values[i]
        end
    end

    return result
end
