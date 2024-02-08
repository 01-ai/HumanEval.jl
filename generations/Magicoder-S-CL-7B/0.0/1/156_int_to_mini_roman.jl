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
    # Define the mapping from integers to roman numerals
    map = Dict(
        1 => "i",
        4 => "iv",
        5 => "v",
        9 => "ix",
        10 => "x",
        40 => "xl",
        50 => "l",
        90 => "xc",
        100 => "c",
        400 => "cd",
        500 => "d",
        900 => "cm",
        1000 => "m"
    )

    # Initialize the result string
    result = ""

    # Iterate over the map in reverse order
    for (value, numeral) in reverse(collect(map))
        # While the number is greater than the current value, append the numeral to the result and subtract the value from the number
        while number >= value
            push!(result, numeral)
            number -= value
        end
    end

    # Return the result string in lowercase
    return lowercase(result)
end
