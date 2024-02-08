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

    roman_numerals = Dict(
        1 => "i", 4 => "iv", 5 => "v", 9 => "ix",
        10 => "x", 40 => "xl", 50 => "l", 90 => "xc",
        100 => "c", 400 => "cd", 500 => "d", 900 => "cm",
        1000 => "m"
    )

    result = ""
    for (value, numeral) in reverse(collect(roman_numerals))
        while number >= value
            result *= numeral
            number -= value
        end
    end

    return result
end
