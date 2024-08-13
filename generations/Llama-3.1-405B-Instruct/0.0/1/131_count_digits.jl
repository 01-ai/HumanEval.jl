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
    """
    Given a positive integer n, return the product of the odd digits. Return 0 if
    all digits are even.
    """
    product = 1
    has_odd_digit = false

    for digit in digits(n)
        if isodd(digit)
            product *= digit
            has_odd_digit = true
        end
    end

    return has_odd_digit ? product : 0
end
