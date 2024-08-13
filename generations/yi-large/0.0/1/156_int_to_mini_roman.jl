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
        throw(DomainError(number, "Number must be between 1 and 1000."))
    end

    # Define symbols and their values
    symbols = Dict(
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

    roman = ""
    for (value, symbol) in sort(collect(symbols), rev=true)
        while number >= value
            roman *= symbol
            number -= value
        end
    end

    return lowercase(roman)
end

# Test cases
println(int_to_mini_roman(19)) # "xix"
println(int_to_mini_roman(152)) # "clii"
println(int_to_mini_roman(426)) # "cdxxvi"
