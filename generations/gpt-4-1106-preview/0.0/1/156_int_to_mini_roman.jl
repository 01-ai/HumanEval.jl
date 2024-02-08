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
    # Define the Roman numeral mappings
    roman_numerals = Dict(
        1 => "i", 4 => "iv", 5 => "v", 9 => "ix",
        10 => "x", 40 => "xl", 50 => "l", 90 => "xc",
        100 => "c", 400 => "cd", 500 => "d", 900 => "cm",
        1000 => "m"
    )

    # Sort the keys in descending order
    keys_sorted = sort(collect(keys(roman_numerals)), rev=true)

    # Initialize the result string
    result = ""

    # Convert the number to Roman numeral
    for key in keys_sorted
        while number >= key
            number -= key
            result *= roman_numerals[key]
        end
    end

    return result
end

# Examples
println(int_to_mini_roman(19))   # Output: "xix"
println(int_to_mini_roman(152))  # Output: "clii"
println(int_to_mini_roman(426))  # Output: "cdxxvi"
