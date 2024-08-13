"""
    count_digits(n::Int)::Int

Given a positive integer n, return the product of the odd digits. Return 0 if
all digits are even.

# Example

```jldoctest
julia> count_digits(1)
1

julia> count_digits(4)
0

julia> count_digits(235)
15
```
"""
function count_digits(n::Int)::Int
    digits_str = string(n)
    product = 1
    has_odd = false
    
    for digit_char in digits_str
        digit = parse(Int, digit_char)
        if digit % 2 != 0
            product *= digit
            has_odd = true
        end
    end
    
    return has_odd ? product : 0
end
