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
    # Initialize the product to 1 (multiplicative identity)
    product = 1
    # Initialize a flag to check if there are any odd digits
    has_odd = false

    while n > 0
        # Extract the last digit
        digit = n % 10
        # Check if the digit is odd
        if digit % 2 != 0
            # Multiply the product by the odd digit
            product *= digit
            # Set the flag to true as we found an odd digit
            has_odd = true
        end
        # Remove the last digit from n
        n ÷= 10
    end

    # If no odd digits were found, return 0
    return has_odd ? product : 0
end
println(count_digits(1))   # Should print 1
println(count_digits(4))   # Should print 0
println(count_digits(235)) # Should print 15
