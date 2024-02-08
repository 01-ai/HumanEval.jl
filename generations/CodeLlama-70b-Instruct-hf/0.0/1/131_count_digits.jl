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
    # Check if the input is a positive integer
    if n < 0
        throw(DomainError(n, "Input must be a positive integer"))
    end

    # Initialize the product of odd digits to 1
    product = 1

    # Iterate through the digits of the input number
    while n > 0
        # Extract the last digit
        digit = n % 10

        # If the digit is odd, multiply it with the product
        if digit % 2 == 1
            product *= digit
        end

        # Remove the last digit from the number
        n = div(n, 10)
    end

    return product
end
