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
    res = ""
    num = [1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000]
    sym = ["I", "IV", "V", "IX", "X", "XL", "L", "XC", "C", "CD", "D", "CM", "M"]

    for (n, s) in zip(reverse(num), reverse(sym))
        d, r = divrem(number, n)
        res *= repeat(s, d)
        number = r
    end
    map(lowercase, res)
end
