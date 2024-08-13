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
    # Define the Roman numerals and their corresponding values
    romans = Dict('i' => 1, 'v' => 5, 'x' => 10, 'l' => 50, 'c' => 100, 'd' => 500, 'm' => 1000)

    # Initialize an empty string to store the result
    result = ""

    # Loop through the Roman numerals in reverse order
    for (r, v) in sort(collect(romans), by=x->x[2], rev=true)
        # While the number is greater than or equal to the current Roman numeral value
        while number >= v
            # Subtract the value from the number and add the Roman numeral to the result
            number -= v
            result *= r
        end
    end

    # Return the result
    return result
end
