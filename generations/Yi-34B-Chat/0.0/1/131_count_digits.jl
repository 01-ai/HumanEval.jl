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
    # Initialize the product of odd digits to 0
    odd_digits_product = 0

    # Loop through the digits of the number
    while n > 0
        # Get the last digit of the number
        digit = n % 10

        # If the digit is odd, add it to the product
        if digit % 2 != 0
            odd_digits_product *= digit
        end

        # Move to the next digit
        n //= 10
    end

    # Return the product of the odd digits
    return odd_digits_product
end
