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
    odd_product = 1
    has_odd = false
    while n > 0
        digit = n % 10
        if digit % 2 == 1
            odd_product *= digit
            has_odd = true
        end
        n = n ÷ 10
    end
    has_odd ? odd_product : 0
end
