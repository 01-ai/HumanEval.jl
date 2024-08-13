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
        throw(DomainError(number, "Number must be between 1 and 1000"))
    end

    roman_numerals = [
        ("m", 1000), ("cm", 900), ("d", 500), ("cd", 400),
        ("c", 100), ("xc", 90), ("l", 50), ("xl", 40),
        ("x", 10), ("ix", 9), ("v", 5), ("iv", 4), ("i", 1)
    ]

    result = ""
    for (roman, value) in roman_numerals
        while number >= value
            result *= roman
            number -= value
        end
    end

    return result
end

# Examples
println(int_to_mini_roman(19))  # "xix"
println(int_to_mini_roman(152)) # "clii"
println(int_to_mini_roman(426)) # "cdxxvi"
