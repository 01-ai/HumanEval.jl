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
    product = 1
    for digit in digits(n)
        if digit % 2 == 1
            product *= digit
        end
    end
    return product
end
