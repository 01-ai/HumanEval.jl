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
function int_to_mini_roman(num::Int)
    if num < 1 || num > 1000
        throw(DomainError("Number must be in the range 1 <= num <= 1000"))
    end

    roman_numerals = Dict(
        1000 => "m",
        900 => "cm",
        500 => "d",
        400 => "cd",
        100 => "c",
        90 => "xc",
        50 => "l",
        40 => "xl",
        10 => "x",
        9 => "ix",
        5 => "v",
        4 => "iv",
        1 => "i"
    )

    result = ""
    for (value, symbol) in sort(collect(roman_numerals), by=x->x[1], rev=true)
        count = div(num, value)
        result *= repeat(symbol, count)
        num -= value * count
    end

    return result
end
